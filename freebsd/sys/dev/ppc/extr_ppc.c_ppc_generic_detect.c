
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_type; int ppc_dtm; int ppc_avm; int ppc_model; int ppc_dev; } ;


 int PPB_ECP ;
 int PPB_EPP ;
 int PPB_NIBBLE ;
 int PPB_SPP ;
 int PPC_ECR_EPP ;
 int PPC_ECR_PS2 ;
 int PPC_ECR_STD ;
 int PPC_TYPE_GENERIC ;

 int SMC_LIKE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 scalar_t__ ppc_check_epp_timeout (struct ppc_data*) ;
 int ppc_generic_setmode (struct ppc_data*,int) ;
 int ppc_smclike_setmode (struct ppc_data*,int) ;
 int printf (char*) ;
 int r_ecr (struct ppc_data*) ;
 int w_ecr (struct ppc_data*,int) ;

__attribute__((used)) static int
ppc_generic_detect(struct ppc_data *ppc, int chipset_mode)
{

 ppc->ppc_type = PPC_TYPE_GENERIC;

 if (bootverbose)
  device_printf(ppc->ppc_dev, "SPP");


 w_ecr(ppc, PPC_ECR_PS2);
 if ((r_ecr(ppc) & 0xe0) == PPC_ECR_PS2) {
  ppc->ppc_dtm |= PPB_ECP | PPB_SPP;
  if (bootverbose)
   printf(" ECP ");


  w_ecr(ppc, PPC_ECR_EPP);
 }


 if (ppc_check_epp_timeout(ppc)) {
  ppc->ppc_dtm |= PPB_EPP;

  if (ppc->ppc_dtm & PPB_ECP) {

   ppc->ppc_model = SMC_LIKE;
   ppc->ppc_type = 128;

   if (bootverbose)
    printf(" ECP+EPP");
  } else {
   if (bootverbose)
    printf(" EPP");
  }
 } else {

  w_ecr(ppc, PPC_ECR_STD);
 }


 ppc->ppc_dtm |= PPB_NIBBLE;

 if (chipset_mode)
  ppc->ppc_avm = chipset_mode;
 else
  ppc->ppc_avm = ppc->ppc_dtm;

 if (bootverbose)
  printf("\n");

 switch (ppc->ppc_type) {
 case 128:
  ppc_smclike_setmode(ppc, chipset_mode);
  break;
 default:
  ppc_generic_setmode(ppc, chipset_mode);
  break;
 }

 return (chipset_mode);
}
