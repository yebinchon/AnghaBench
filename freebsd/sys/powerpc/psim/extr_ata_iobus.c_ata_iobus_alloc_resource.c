
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;




 int ATA_CTLIOSIZE ;

 int ATA_IOSIZE ;
 int ATA_IRQ_RID ;
 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int,int,int,int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 int* iobus_get_regs (int ) ;

struct resource *
ata_iobus_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count,
    u_int flags)
{
 struct resource *res = ((void*)0);
 int myrid;
 u_int *ofw_regs;

 ofw_regs = iobus_get_regs(dev);
 if (type == SYS_RES_IOPORT) {
  switch (*rid) {
  case 128:
   myrid = 0;
   start = ofw_regs[4];
   end = start + ATA_IOSIZE - 1;
   count = ATA_IOSIZE;
   res = BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
       SYS_RES_MEMORY, &myrid,
       start, end, count, flags);
   break;

  case 129:
   myrid = 0;
   start = ofw_regs[10];
   end = start + ATA_CTLIOSIZE - 1;
   count = ATA_CTLIOSIZE;
   res = BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
       SYS_RES_MEMORY, &myrid,
       start, end, count, flags);
   break;

  case 130:

   break;
  }
  return (res);

 } else if (type == SYS_RES_IRQ && *rid == ATA_IRQ_RID) {



  return (BUS_ALLOC_RESOURCE(device_get_parent(dev), dev,
        SYS_RES_IRQ, rid, 0, ~0, 1, flags));

 } else {
  return (((void*)0));
 }
}
