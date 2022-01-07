
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_flag; int nd_nam; } ;


 int AUTH_SYS ;
 int ND_EXAUTHSYS ;
 int ND_EXGSS ;
 int ND_EXGSSINTEGRITY ;
 int ND_EXGSSPRIVACY ;
 int NFSERR_PROGUNAVAIL ;
 int NFSEXITCODE (int) ;
 int RPCSEC_GSS_KRB5 ;
 int RPCSEC_GSS_KRB5I ;
 int RPCSEC_GSS_KRB5P ;
 int crfree (struct ucred*) ;
 int nfsv4root_mnt ;
 int vfs_stdcheckexp (int *,int ,int*,struct ucred**,int*,int**) ;

int
nfsvno_v4rootexport(struct nfsrv_descript *nd)
{
 struct ucred *credanon;
 int exflags, error = 0, numsecflavor, *secflavors, i;

 error = vfs_stdcheckexp(&nfsv4root_mnt, nd->nd_nam, &exflags,
     &credanon, &numsecflavor, &secflavors);
 if (error) {
  error = NFSERR_PROGUNAVAIL;
  goto out;
 }
 if (credanon != ((void*)0))
  crfree(credanon);
 for (i = 0; i < numsecflavor; i++) {
  if (secflavors[i] == AUTH_SYS)
   nd->nd_flag |= ND_EXAUTHSYS;
  else if (secflavors[i] == RPCSEC_GSS_KRB5)
   nd->nd_flag |= ND_EXGSS;
  else if (secflavors[i] == RPCSEC_GSS_KRB5I)
   nd->nd_flag |= ND_EXGSSINTEGRITY;
  else if (secflavors[i] == RPCSEC_GSS_KRB5P)
   nd->nd_flag |= ND_EXGSSPRIVACY;
 }

out:
 NFSEXITCODE(error);
 return (error);
}
