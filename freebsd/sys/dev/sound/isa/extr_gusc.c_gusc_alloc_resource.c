
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
typedef TYPE_1__* sc_p ;
typedef int rman_res_t ;
typedef int device_t ;
struct TYPE_3__ {int* io_alloced; int irq_alloced; int* drq_alloced; struct resource** drq; struct resource* irq; struct resource** io; } ;





 TYPE_1__* device_get_softc (int ) ;

__attribute__((used)) static struct resource *
gusc_alloc_resource(device_t bus, device_t child, int type, int *rid,
      rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 sc_p scp;
 int *alloced, rid_max, alloced_max;
 struct resource **res;

 scp = device_get_softc(bus);
 switch (type) {
 case 129:
  alloced = scp->io_alloced;
  res = scp->io;
  rid_max = 2;
  alloced_max = 2;
  break;
 case 128:
  alloced = &scp->irq_alloced;
  res = &scp->irq;
  rid_max = 0;
  alloced_max = 2;
  break;
 case 130:
  alloced = scp->drq_alloced;
  res = scp->drq;
  rid_max = 1;
  alloced_max = 1;
  break;
 default:
  return (((void*)0));
 }

 if (*rid > rid_max || alloced[*rid] == alloced_max)
  return (((void*)0));

 alloced[*rid]++;
 return (res[*rid]);
}
