
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrv_descript {int nd_flag; } ;
struct nfsexstuff {int nes_numsecflavor; scalar_t__* nes_secflavors; } ;


 scalar_t__ AUTH_SYS ;
 int ND_GSS ;
 int ND_GSSINTEGRITY ;
 int ND_GSSPRIVACY ;
 scalar_t__ RPCSEC_GSS_KRB5 ;
 scalar_t__ RPCSEC_GSS_KRB5I ;
 scalar_t__ RPCSEC_GSS_KRB5P ;

int
nfsvno_testexp(struct nfsrv_descript *nd, struct nfsexstuff *exp)
{
 int i;







 if (exp->nes_numsecflavor == 0)
  return (0);

 for (i = 0; i < exp->nes_numsecflavor; i++) {




  if (exp->nes_secflavors[i] == RPCSEC_GSS_KRB5P &&
      (nd->nd_flag & ND_GSSPRIVACY))
   return (0);
  if (exp->nes_secflavors[i] == RPCSEC_GSS_KRB5I &&
      (nd->nd_flag & ND_GSSINTEGRITY))
   return (0);
  if (exp->nes_secflavors[i] == RPCSEC_GSS_KRB5 &&
      (nd->nd_flag & ND_GSS))
   return (0);
  if (exp->nes_secflavors[i] == AUTH_SYS &&
      (nd->nd_flag & ND_GSS) == 0)
   return (0);
 }
 return (1);
}
