
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int io_rid; int conf_rid; int drq1_rid; int drq2_rid; int * conf_base; int bd_id; scalar_t__ irq_rid; int bd_flags; } ;
typedef int device_t ;


 int BD_F_MSS_OFFSET ;
 int DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;
 int ENOMEM ;
 int ENXIO ;
 int MD_GUSMAX ;
 int MD_GUSPNP ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 int device_get_flags (int ) ;
 int device_get_parent (int ) ;
 int isa_get_drq (int ) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int isa_get_port (int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mss_doattach (int ,struct mss_info*) ;
 int mss_release_resources (struct mss_info*,int ) ;
 int port_wr (int *,int,unsigned char) ;

__attribute__((used)) static int
guspcm_attach(device_t dev)
{
 device_t parent = device_get_parent(dev);
 struct mss_info *mss;
 int base, flags;
 unsigned char ctl;

 mss = (struct mss_info *)malloc(sizeof *mss, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mss == ((void*)0))
  return ENOMEM;

 mss->bd_flags = BD_F_MSS_OFFSET;
 mss->io_rid = 2;
 mss->conf_rid = 1;
 mss->irq_rid = 0;
 mss->drq1_rid = 1;
 mss->drq2_rid = -1;

 if (isa_get_logicalid(parent) == 0)
  mss->bd_id = MD_GUSMAX;
 else {
  mss->bd_id = MD_GUSPNP;
  mss->drq2_rid = 0;
  goto skip_setup;
 }

 flags = device_get_flags(parent);
 if (flags & DV_F_DUAL_DMA)
  mss->drq2_rid = 0;

 mss->conf_base = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
           &mss->conf_rid,
           8, RF_ACTIVE);

 if (mss->conf_base == ((void*)0)) {
  mss_release_resources(mss, dev);
  return ENXIO;
 }

 base = isa_get_port(parent);

 ctl = 0x40;
 if (isa_get_drq(dev) > 3)
  ctl |= 0x10;
 if ((flags & DV_F_DUAL_DMA) != 0 && (flags & DV_F_DRQ_MASK) > 3)
  ctl |= 0x20;
 ctl |= (base >> 4) & 0x0f;
 port_wr(mss->conf_base, 6, ctl);

skip_setup:
 return mss_doattach(dev, mss);
}
