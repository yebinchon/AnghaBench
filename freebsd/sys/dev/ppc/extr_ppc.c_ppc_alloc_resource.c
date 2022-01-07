
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct ppc_data {struct resource* res_irq; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct ppc_data* DEVTOSOFTC (int ) ;


struct resource *
ppc_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct ppc_data *ppc = DEVTOSOFTC(bus);

 switch (type) {
 case 128:
  if (*rid == 0)
   return (ppc->res_irq);
  break;
 }
 return (((void*)0));
}
