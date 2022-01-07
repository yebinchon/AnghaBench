
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct nfsvattr {int na_vattr; } ;
struct nfsrv_descript {int dummy; } ;
struct mount {int dummy; } ;
typedef int nfsattrbit_t ;
typedef int fhandle_t ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSATTRBIT_SPACEAVAIL ;
 int NFSATTRBIT_SPACEFREE ;
 int NFSATTRBIT_SPACETOTAL ;
 int NFSEXITCODE2 (int ,struct nfsrv_descript*) ;
 scalar_t__ NFSISSET_ATTRBIT (int *,int ) ;
 int free (struct statfs*,int ) ;
 struct statfs* malloc (int,int ,int) ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_pnfsstatfs (struct statfs*,struct mount*) ;
 int nfsv4_fillattr (struct nfsrv_descript*,struct mount*,struct vnode*,int *,int *,int *,int,int *,struct ucred*,struct thread*,int,int,int,int,int ,struct statfs*) ;

int
nfsvno_fillattr(struct nfsrv_descript *nd, struct mount *mp, struct vnode *vp,
    struct nfsvattr *nvap, fhandle_t *fhp, int rderror, nfsattrbit_t *attrbitp,
    struct ucred *cred, struct thread *p, int isdgram, int reterr,
    int supports_nfsv4acls, int at_root, uint64_t mounted_on_fileno)
{
 struct statfs *sf;
 int error;

 sf = ((void*)0);
 if (nfsrv_devidcnt > 0 &&
     (NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_SPACEAVAIL) ||
      NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_SPACEFREE) ||
      NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_SPACETOTAL))) {
  sf = malloc(sizeof(*sf), M_TEMP, M_WAITOK | M_ZERO);
  error = nfsrv_pnfsstatfs(sf, mp);
  if (error != 0) {
   free(sf, M_TEMP);
   sf = ((void*)0);
  }
 }
 error = nfsv4_fillattr(nd, mp, vp, ((void*)0), &nvap->na_vattr, fhp, rderror,
     attrbitp, cred, p, isdgram, reterr, supports_nfsv4acls, at_root,
     mounted_on_fileno, sf);
 free(sf, M_TEMP);
 NFSEXITCODE2(0, nd);
 return (error);
}
