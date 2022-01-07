
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int* io_alloced; int* drq_alloced; int* irq_alloced; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int DRQ_MAX ;
 int IO_MAX ;
 int IRQ_MAX ;



 struct sbc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
sbc_release_resource(device_t bus, device_t child, int type, int rid,
   struct resource *r)
{
 struct sbc_softc *scp;
 int *alloced, rid_max;

 scp = device_get_softc(bus);
 switch (type) {
 case 129:
  alloced = scp->io_alloced;
  rid_max = IO_MAX - 1;
  break;
 case 130:
  alloced = scp->drq_alloced;
  rid_max = DRQ_MAX - 1;
  break;
 case 128:
  alloced = scp->irq_alloced;
  rid_max = IRQ_MAX - 1;
  break;
 default:
  return (1);
 }

 if (rid > rid_max || alloced[rid] == 0)
  return (1);

 alloced[rid]--;
 return (0);
}
