
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sbc_softc {int* io_alloced; int* drq_alloced; int* irq_alloced; struct resource** irq; struct resource** drq; struct resource** io; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int DRQ_MAX ;
 int INTR_MAX ;
 int IO_MAX ;
 int IRQ_MAX ;



 struct sbc_softc* device_get_softc (int ) ;

__attribute__((used)) static struct resource *
sbc_alloc_resource(device_t bus, device_t child, int type, int *rid,
     rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct sbc_softc *scp;
 int *alloced, rid_max, alloced_max;
 struct resource **res;

 scp = device_get_softc(bus);
 switch (type) {
 case 129:
  alloced = scp->io_alloced;
  res = scp->io;
  rid_max = IO_MAX - 1;
  alloced_max = 1;
  break;
 case 130:
  alloced = scp->drq_alloced;
  res = scp->drq;
  rid_max = DRQ_MAX - 1;
  alloced_max = 1;
  break;
 case 128:
  alloced = scp->irq_alloced;
  res = scp->irq;
  rid_max = IRQ_MAX - 1;
  alloced_max = INTR_MAX;
  break;
 default:
  return (((void*)0));
 }

 if (*rid > rid_max || alloced[*rid] == alloced_max)
  return (((void*)0));

 alloced[*rid]++;
 return (res[*rid]);
}
