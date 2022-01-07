
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsexstuff {int nes_numsecflavor; int* nes_secflavors; scalar_t__ nes_exflag; } ;
struct mount {int dummy; } ;


 int NFSEXITCODE (int) ;
 int VFS_CHECKEXP (struct mount*,struct sockaddr*,scalar_t__*,struct ucred**,int*,int**) ;
 scalar_t__ nfs_rootfhset ;

int
nfsvno_checkexp(struct mount *mp, struct sockaddr *nam, struct nfsexstuff *exp,
    struct ucred **credp)
{
 int i, error, *secflavors;

 error = VFS_CHECKEXP(mp, nam, &exp->nes_exflag, credp,
     &exp->nes_numsecflavor, &secflavors);
 if (error) {
  if (nfs_rootfhset) {
   exp->nes_exflag = 0;
   exp->nes_numsecflavor = 0;
   error = 0;
  }
 } else {

  for (i = 0; i < exp->nes_numsecflavor; i++)
   exp->nes_secflavors[i] = secflavors[i];
 }
 NFSEXITCODE(error);
 return (error);
}
