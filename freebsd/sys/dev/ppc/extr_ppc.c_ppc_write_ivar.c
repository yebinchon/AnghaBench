
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {scalar_t__ ppc_intr_arg; int * ppc_intr_hook; int ppbus; } ;
typedef int device_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int PPC_ASSERT_LOCKED (struct ppc_data*) ;

 scalar_t__ device_get_softc (int ) ;

int
ppc_write_ivar(device_t bus, device_t dev, int index, uintptr_t val)
{
 struct ppc_data *ppc = (struct ppc_data *)device_get_softc(bus);

 switch (index) {
 case 128:
  PPC_ASSERT_LOCKED(ppc);
  if (dev != ppc->ppbus)
   return (EINVAL);
  if (val == 0) {
   ppc->ppc_intr_hook = ((void*)0);
   break;
  }
  if (ppc->ppc_intr_hook != ((void*)0))
   return (EBUSY);
  ppc->ppc_intr_hook = (void *)val;
  ppc->ppc_intr_arg = device_get_softc(dev);
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
