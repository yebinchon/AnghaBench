
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {int ex_flags; } ;
struct nfsex_args {int * fspec; TYPE_1__ export; } ;
struct nameidata {int ni_vp; } ;
typedef int fhandle_t ;
typedef int caddr_t ;
struct TYPE_4__ {int nfsrvfh_data; int nfsrvfh_len; } ;


 int EPERM ;
 int FOLLOW ;
 int LOOKUP ;
 int MNT_DELEXPORT ;
 int NDINIT (struct nameidata*,int ,int ,int ,int *,struct thread*) ;
 int NFSBCOPY (int ,int ,int) ;
 int NFSEXITCODE (int) ;
 int NFSX_MYFH ;
 int UIO_USERSPACE ;
 int namei (struct nameidata*) ;
 TYPE_2__ nfs_rootfh ;
 int nfs_rootfhset ;
 int nfsv4root_mnt ;
 int nfsvno_getfh (int ,int *,struct thread*) ;
 int vfs_export (int *,TYPE_1__*) ;
 int vrele (int ) ;

int
nfsrv_v4rootexport(void *argp, struct ucred *cred, struct thread *p)
{
 struct nfsex_args *nfsexargp = (struct nfsex_args *)argp;
 int error = 0;
 struct nameidata nd;
 fhandle_t fh;

 error = vfs_export(&nfsv4root_mnt, &nfsexargp->export);
 if ((nfsexargp->export.ex_flags & MNT_DELEXPORT) != 0)
  nfs_rootfhset = 0;
 else if (error == 0) {
  if (nfsexargp->fspec == ((void*)0)) {
   error = EPERM;
   goto out;
  }



  NDINIT(&nd, LOOKUP, FOLLOW, UIO_USERSPACE,
      nfsexargp->fspec, p);
  if ((error = namei(&nd)) != 0)
   goto out;
  error = nfsvno_getfh(nd.ni_vp, &fh, p);
  vrele(nd.ni_vp);
  if (!error) {
   nfs_rootfh.nfsrvfh_len = NFSX_MYFH;
   NFSBCOPY((caddr_t)&fh,
       nfs_rootfh.nfsrvfh_data,
       sizeof (fhandle_t));
   nfs_rootfhset = 1;
  }
 }

out:
 NFSEXITCODE(error);
 return (error);
}
