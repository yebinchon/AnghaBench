
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_type; } ;
typedef int device_t ;


 struct ppc_data* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int PPC_ASSERT_LOCKED (struct ppc_data*) ;


 int ppc_generic_setmode (struct ppc_data*,int) ;
 int ppc_smclike_setmode (struct ppc_data*,int) ;

int
ppc_setmode(device_t dev, int mode)
{
 struct ppc_data *ppc = DEVTOSOFTC(dev);

 PPC_ASSERT_LOCKED(ppc);
 switch (ppc->ppc_type) {
 case 128:
  return (ppc_smclike_setmode(ppc, mode));
  break;

 case 129:
 default:
  return (ppc_generic_setmode(ppc, mode));
  break;
 }


 return (ENXIO);
}
