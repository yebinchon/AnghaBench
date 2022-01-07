
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int dummy; } ;
typedef int device_t ;


 struct ppc_data* DEVTOSOFTC (int ) ;
 int PPC_ASSERT_LOCKED (struct ppc_data*) ;
 int ppc_reset_epp_timeout (struct ppc_data*) ;

int
ppc_reset_epp(device_t dev)
{
 struct ppc_data *ppc = DEVTOSOFTC(dev);

 PPC_ASSERT_LOCKED(ppc);
 ppc_reset_epp_timeout(ppc);

 return 0;
}
