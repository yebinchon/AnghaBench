
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int conf_rid; int drq2_rid; int bd_id; scalar_t__ drq1_rid; scalar_t__ irq_rid; scalar_t__ io_rid; } ;
typedef int device_t ;


 int DV_F_DEV_MASK ;
 int DV_F_DEV_SHIFT ;
 int DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;
 int ENXIO ;
 int MD_YM0020 ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SYS_RES_DRQ ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int device_get_flags (int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mss_doattach (int ,struct mss_info*) ;
 int ymf_test (int ,struct mss_info*) ;

__attribute__((used)) static int
mss_attach(device_t dev)
{
     struct mss_info *mss;
     int flags = device_get_flags(dev);

     mss = (struct mss_info *)malloc(sizeof *mss, M_DEVBUF, M_NOWAIT | M_ZERO);
     if (!mss) return ENXIO;

     mss->io_rid = 0;
     mss->conf_rid = -1;
     mss->irq_rid = 0;
     mss->drq1_rid = 0;
     mss->drq2_rid = -1;
     if (flags & DV_F_DUAL_DMA) {
         bus_set_resource(dev, SYS_RES_DRQ, 1,
                 flags & DV_F_DRQ_MASK, 1);
  mss->drq2_rid = 1;
     }
     mss->bd_id = (device_get_flags(dev) & DV_F_DEV_MASK) >> DV_F_DEV_SHIFT;
     if (mss->bd_id == MD_YM0020) ymf_test(dev, mss);
     return mss_doattach(dev, mss);
}
