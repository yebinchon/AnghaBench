
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct resource {int dummy; } ;
struct isa_config {int ic_nirq; scalar_t__* ic_irqmask; } ;
typedef int device_t ;


 int ISA_NIRQ ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int find_first_bit (scalar_t__) ;
 int find_next_bit (scalar_t__,int) ;

__attribute__((used)) static int
isa_find_irq(device_t child, struct isa_config *config,
    struct isa_config *result)
{
 int success, i;
 struct resource *res[ISA_NIRQ];




 for (i = 0; i < ISA_NIRQ; i++) {
  bus_delete_resource(child, SYS_RES_IRQ, i);
  res[i] = ((void*)0);
 }

 success = 1;
 result->ic_nirq = config->ic_nirq;
 for (i = 0; i < config->ic_nirq; i++) {
  uint32_t mask = config->ic_irqmask[i];
  int irq;


  if (mask == 0) {
   result->ic_irqmask[i] = 0;
   continue;
  }

  for (irq = find_first_bit(mask);
       irq != -1;
       irq = find_next_bit(mask, irq)) {
   bus_set_resource(child, SYS_RES_IRQ, i,
      irq, 1);
   res[i] = bus_alloc_resource_any(child,
       SYS_RES_IRQ, &i,
       0 );
   if (res[i]) {
    result->ic_irqmask[i] = (1 << irq);
    break;
   }
  }





  if (!res[i]) {
   success = 0;
   break;
  }
 }

 for (i = 0; i < ISA_NIRQ; i++) {
  if (res[i])
   bus_release_resource(child, SYS_RES_IRQ,
          i, res[i]);
 }

 return (success);
}
