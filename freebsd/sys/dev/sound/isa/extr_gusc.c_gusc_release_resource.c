
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_3__ {int* io_alloced; int irq_alloced; int* drq_alloced; } ;





 TYPE_1__* device_get_softc (int ) ;

__attribute__((used)) static int
gusc_release_resource(device_t bus, device_t child, int type, int rid,
   struct resource *r)
{
 sc_p scp;
 int *alloced, rid_max;

 scp = device_get_softc(bus);
 switch (type) {
 case 129:
  alloced = scp->io_alloced;
  rid_max = 2;
  break;
 case 128:
  alloced = &scp->irq_alloced;
  rid_max = 0;
  break;
 case 130:
  alloced = scp->drq_alloced;
  rid_max = 1;
  break;
 default:
  return (1);
 }

 if (rid > rid_max || alloced[rid] == 0)
  return (1);

 alloced[rid]--;
 return (0);
}
