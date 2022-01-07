
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef void* uint64_t ;
struct nfsrollback {int rlck_type; void* rlck_end; void* rlck_first; } ;
struct nfslockfile {int lf_rollback; } ;
struct TYPE_2__ {scalar_t__* lval; } ;
struct nfslockconflict {int cl_flags; int cl_ownerlen; int cl_owner; int cl_end; scalar_t__ cl_first; TYPE_1__ cl_clientid; } ;
typedef int NFSPROC_T ;


 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int LIST_INSERT_HEAD (int *,struct nfsrollback*,int ) ;
 int M_NFSDROLLBACK ;
 int M_WAITOK ;
 int NFS64BITSSET ;
 int NFSBCOPY (char*,int ,int) ;
 int NFSEXITCODE (int) ;
 int NFSLCK_READ ;
 int NFSLCK_WRITE ;
 struct nfsrollback* malloc (int,int ,int ) ;
 int nfsrv_locallock_rollback (int ,struct nfslockfile*,int *) ;
 int nfsvno_advlock (int ,int,void*,void*,int *) ;
 int rlck_list ;

__attribute__((used)) static int
nfsrv_dolocal(vnode_t vp, struct nfslockfile *lfp, int flags, int oldflags,
    uint64_t first, uint64_t end, struct nfslockconflict *cfp, NFSPROC_T *p)
{
 struct nfsrollback *rlp;
 int error = 0, ltype, oldltype;

 if (flags & NFSLCK_WRITE)
  ltype = F_WRLCK;
 else if (flags & NFSLCK_READ)
  ltype = F_RDLCK;
 else
  ltype = F_UNLCK;
 if (oldflags & NFSLCK_WRITE)
  oldltype = F_WRLCK;
 else if (oldflags & NFSLCK_READ)
  oldltype = F_RDLCK;
 else
  oldltype = F_UNLCK;
 if (ltype == oldltype || (oldltype == F_WRLCK && ltype == F_RDLCK))

  goto out;
 error = nfsvno_advlock(vp, ltype, first, end, p);
 if (error != 0) {
  if (cfp != ((void*)0)) {
   cfp->cl_clientid.lval[0] = 0;
   cfp->cl_clientid.lval[1] = 0;
   cfp->cl_first = 0;
   cfp->cl_end = NFS64BITSSET;
   cfp->cl_flags = NFSLCK_WRITE;
   cfp->cl_ownerlen = 5;
   NFSBCOPY("LOCAL", cfp->cl_owner, 5);
  }
  nfsrv_locallock_rollback(vp, lfp, p);
 } else if (ltype != F_UNLCK) {
  rlp = malloc(sizeof (struct nfsrollback), M_NFSDROLLBACK,
      M_WAITOK);
  rlp->rlck_first = first;
  rlp->rlck_end = end;
  rlp->rlck_type = oldltype;
  LIST_INSERT_HEAD(&lfp->lf_rollback, rlp, rlck_list);
 }

out:
 NFSEXITCODE(error);
 return (error);
}
