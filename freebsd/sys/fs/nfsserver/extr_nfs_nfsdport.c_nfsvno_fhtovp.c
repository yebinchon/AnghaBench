
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsexstuff {int nes_numsecflavor; int* nes_secflavors; scalar_t__ nes_exflag; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int fh_fid; } ;
typedef TYPE_1__ fhandle_t ;


 int ESTALE ;
 int NFSEXITCODE (int) ;
 int VFS_CHECKEXP (struct mount*,struct sockaddr*,scalar_t__*,struct ucred**,int*,int**) ;
 int VFS_FHTOVP (struct mount*,int *,int,struct vnode**) ;
 scalar_t__ nfs_rootfhset ;
 int vput (struct vnode*) ;

int
nfsvno_fhtovp(struct mount *mp, fhandle_t *fhp, struct sockaddr *nam,
    int lktype, struct vnode **vpp, struct nfsexstuff *exp,
    struct ucred **credp)
{
 int i, error, *secflavors;

 *credp = ((void*)0);
 exp->nes_numsecflavor = 0;
 error = VFS_FHTOVP(mp, &fhp->fh_fid, lktype, vpp);
 if (error != 0)

  error = ESTALE;
 if (nam && !error) {
  error = VFS_CHECKEXP(mp, nam, &exp->nes_exflag, credp,
      &exp->nes_numsecflavor, &secflavors);
  if (error) {
   if (nfs_rootfhset) {
    exp->nes_exflag = 0;
    exp->nes_numsecflavor = 0;
    error = 0;
   } else {
    vput(*vpp);
   }
  } else {

   for (i = 0; i < exp->nes_numsecflavor; i++)
    exp->nes_secflavors[i] = secflavors[i];
  }
 }
 NFSEXITCODE(error);
 return (error);
}
