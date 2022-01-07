
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int conf_rid; int drq2_rid; scalar_t__ io_rid; void* io_base; scalar_t__ drq1_rid; scalar_t__ irq_rid; } ;
typedef int device_t ;


 int BVDDB (int ) ;
 int DV_F_TRUE_MSS ;
 int ENXIO ;
 int ISA_DELETE_RESOURCE (int ,int ,int ,scalar_t__) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 void* bus_alloc_resource_anywhere (int ,int ,scalar_t__*,int,int ) ;
 int bus_set_resource (int ,int ,scalar_t__,int,int) ;
 int device_get_flags (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_flags (int ,int) ;
 int io_rd (struct mss_info*,int) ;
 int isa_get_drq (int ) ;
 int isa_get_irq (int ) ;
 scalar_t__ isa_get_logicalid (int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mss_detect (int ,struct mss_info*) ;
 int mss_release_resources (struct mss_info*,int ) ;
 int printf (char*,...) ;
 int rman_get_start (void*) ;

__attribute__((used)) static int
mss_probe(device_t dev)
{
     u_char tmp, tmpx;
     int flags, irq, drq, result = ENXIO, setres = 0;
     struct mss_info *mss;

     if (isa_get_logicalid(dev)) return ENXIO;

     mss = (struct mss_info *)malloc(sizeof *mss, M_DEVBUF, M_NOWAIT | M_ZERO);
     if (!mss) return ENXIO;

     mss->io_rid = 0;
     mss->conf_rid = -1;
     mss->irq_rid = 0;
     mss->drq1_rid = 0;
     mss->drq2_rid = -1;
     mss->io_base = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
          &mss->io_rid, 8, RF_ACTIVE);
     if (!mss->io_base) {
         BVDDB(printf("mss_probe: no address given, try 0x%x\n", 0x530));
  mss->io_rid = 0;

  setres = 1;
  bus_set_resource(dev, SYS_RES_IOPORT, mss->io_rid,
                0x530, 8);
  mss->io_base = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT,
       &mss->io_rid,
       8, RF_ACTIVE);
     }
     if (!mss->io_base) goto no;


     flags = device_get_flags(dev);
     irq = isa_get_irq(dev);
     drq = isa_get_drq(dev);

     if (!(device_get_flags(dev) & DV_F_TRUE_MSS)) goto mss_probe_end;







     device_set_desc(dev, "MSS");
     tmpx = tmp = io_rd(mss, 3);
     if (tmp == 0xff) {
  BVDDB(printf("I/O addr inactive (%x), try pseudo_mss\n", tmp));
  device_set_flags(dev, flags & ~DV_F_TRUE_MSS);
  goto mss_probe_end;
     }
     tmp &= 0x3f;
     if (!(tmp == 0x04 || tmp == 0x0f || tmp == 0x00 || tmp == 0x05)) {
  BVDDB(printf("No MSS signature detected on port 0x%jx (0x%x)\n",
        rman_get_start(mss->io_base), tmpx));
  goto no;
     }
     if (irq > 11) {
  printf("MSS: Bad IRQ %d\n", irq);
  goto no;
     }
     if (!(drq == 0 || drq == 1 || drq == 3)) {
  printf("MSS: Bad DMA %d\n", drq);
  goto no;
     }
     if (tmpx & 0x80) {

  if (drq == 0) {
       printf("MSS: Can't use DMA0 with a 8 bit card/slot\n");
       goto no;
  }
  if (!(irq == 7 || irq == 9)) {
       printf("MSS: Can't use IRQ%d with a 8 bit card/slot\n",
          irq);
       goto no;
  }
     }
 mss_probe_end:
     result = mss_detect(dev, mss);
 no:
     mss_release_resources(mss, dev);




     return result;
}
