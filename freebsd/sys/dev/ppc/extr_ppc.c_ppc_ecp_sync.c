
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_avm; int ppc_dtm; } ;
typedef int device_t ;


 int DELAY (int) ;
 struct ppc_data* DEVTOSOFTC (int ) ;
 int PPB_ECP ;
 int PPC_ASSERT_LOCKED (struct ppc_data*) ;
 int PPC_ECR_EPP ;
 int device_printf (int ,char*) ;
 int r_ecr (struct ppc_data*) ;

int
ppc_ecp_sync(device_t dev)
{
 int i, r;
 struct ppc_data *ppc = DEVTOSOFTC(dev);

 PPC_ASSERT_LOCKED(ppc);
 if (!(ppc->ppc_avm & PPB_ECP) && !(ppc->ppc_dtm & PPB_ECP))
  return 0;

 r = r_ecr(ppc);
 if ((r & 0xe0) != PPC_ECR_EPP)
  return 0;

 for (i = 0; i < 100; i++) {
  r = r_ecr(ppc);
  if (r & 0x1)
   return 0;
  DELAY(100);
 }

 device_printf(dev, "ECP sync failed as data still present in FIFO.\n");

 return 0;
}
