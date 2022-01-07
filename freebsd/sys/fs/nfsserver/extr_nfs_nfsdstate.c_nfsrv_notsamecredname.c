
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsrv_descript {int nd_flag; scalar_t__ nd_princlen; TYPE_1__* nd_cred; int nd_principal; } ;
struct nfsclient {int lc_flags; scalar_t__ lc_namelen; scalar_t__ lc_uid; int lc_name; } ;
struct TYPE_2__ {scalar_t__ cr_uid; } ;


 int LCL_GSS ;
 int LCL_NAME ;
 int ND_GSS ;
 scalar_t__ NFSBCMP (int ,int ,scalar_t__) ;

__attribute__((used)) static int
nfsrv_notsamecredname(struct nfsrv_descript *nd, struct nfsclient *clp)
{

 if (nd->nd_flag & ND_GSS) {
  if (!(clp->lc_flags & LCL_GSS))
   return (1);
  if (clp->lc_flags & LCL_NAME) {
   if (nd->nd_princlen != clp->lc_namelen ||
       NFSBCMP(nd->nd_principal, clp->lc_name,
    clp->lc_namelen))
    return (1);
   else
    return (0);
  }
  if (nd->nd_cred->cr_uid == clp->lc_uid)
   return (0);
  else
   return (1);
 } else if (clp->lc_flags & LCL_GSS)
  return (1);





 if (nd->nd_cred->cr_uid == clp->lc_uid || nd->nd_cred->cr_uid == 0)
  return (0);
 else
  return (1);
}
