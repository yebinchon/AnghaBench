
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u_long ;
struct ppc_data {int ppc_lock; int ppc_epp; } ;
typedef int device_t ;


 int ENOENT ;
 int PPC_ASSERT_LOCKED (struct ppc_data*) ;


 scalar_t__ device_get_softc (int ) ;

int
ppc_read_ivar(device_t bus, device_t dev, int index, uintptr_t *val)
{
 struct ppc_data *ppc = (struct ppc_data *)device_get_softc(bus);

 switch (index) {
 case 129:
  PPC_ASSERT_LOCKED(ppc);
  *val = (u_long)ppc->ppc_epp;
  break;
 case 128:
  *val = (uintptr_t)&ppc->ppc_lock;
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
