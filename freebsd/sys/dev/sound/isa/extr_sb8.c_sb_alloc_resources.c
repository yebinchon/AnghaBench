
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int bufsize; void* drq; void* irq; void* io_base; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int isa_dma_acquire (int ) ;
 int isa_dmainit (int ,int ) ;
 int rman_get_start (void*) ;

__attribute__((used)) static int
sb_alloc_resources(struct sb_info *sb, device_t dev)
{
 int rid;

 rid = 0;
 if (!sb->io_base)
      sb->io_base = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
   &rid, RF_ACTIVE);
 rid = 0;
 if (!sb->irq)
      sb->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
   &rid, RF_ACTIVE);
 rid = 0;
 if (!sb->drq)
      sb->drq = bus_alloc_resource_any(dev, SYS_RES_DRQ,
   &rid, RF_ACTIVE);

 if (sb->io_base && sb->drq && sb->irq) {
  isa_dma_acquire(rman_get_start(sb->drq));
  isa_dmainit(rman_get_start(sb->drq), sb->bufsize);

  return 0;
 } else return ENXIO;
}
