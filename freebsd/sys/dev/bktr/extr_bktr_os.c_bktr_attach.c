
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct bktr_softc {int * res_mem; scalar_t__ mem_rid; int * res_irq; scalar_t__ irq_rid; void* vbidev; void* vbidev_alias; void* tunerdev; void* tunerdev_alias; void* bktrdev; void* bktrdev_alias; int res_ih; int memh; int memt; int bktr_xname; } ;
typedef int device_t ;


 int ALL_INTS_DISABLED ;
 int BKTR_GPIO_DMA_CTL ;
 int BKTR_INT_MASK ;
 int BROOKTREE_DEF_LATENCY_VALUE ;
 int BROOKTREE_IRQ ;
 int ENXIO ;
 int FIFO_RISC_DISABLED ;
 int INTR_TYPE_TTY ;
 int OUTL (struct bktr_softc*,int ,int ) ;
 int OUTW (struct bktr_softc*,int ,int ) ;
 scalar_t__ PCIR_BAR (int ) ;
 int PCI_INTERRUPT_REG ;
 int PCI_LATENCY_TIMER ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bktr_cdevsw ;
 int bktr_intr ;
 scalar_t__ bootverbose ;
 scalar_t__ bt848_i2c_attach (int ) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,struct bktr_softc*,int *) ;
 int common_bktr_attach (struct bktr_softc*,unsigned int,int,unsigned int) ;
 struct bktr_softc* device_get_softc (int ) ;
 unsigned int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 void* make_dev (int *,unsigned int,int ,int ,int,char*,unsigned int) ;
 void* make_dev_alias (void*,char*) ;
 int pci_conf_read (int ,int ) ;
 int pci_conf_write (int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 unsigned int pci_get_revid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int printf (char*,...) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int snprintf (int ,int,char*,unsigned int) ;
 int tag ;

__attribute__((used)) static int
bktr_attach( device_t dev )
{
 u_long latency;
 u_long fun;
 unsigned int rev;
 unsigned int unit;
 int error = 0;




        struct bktr_softc *bktr = device_get_softc(dev);

 unit = device_get_unit(dev);


 snprintf(bktr->bktr_xname, sizeof(bktr->bktr_xname), "bktr%d",unit);




 pci_enable_busmaster(dev);




 bktr->mem_rid = PCIR_BAR(0);
 bktr->res_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &bktr->mem_rid, RF_ACTIVE);

 if (!bktr->res_mem) {
  device_printf(dev, "could not map memory\n");
  error = ENXIO;
  goto fail;
 }
 bktr->memt = rman_get_bustag(bktr->res_mem);
 bktr->memh = rman_get_bushandle(bktr->res_mem);





 OUTL(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
 OUTW(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);
 bktr->irq_rid = 0;
 bktr->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
    &bktr->irq_rid, RF_SHAREABLE | RF_ACTIVE);
 if (bktr->res_irq == ((void*)0)) {
  device_printf(dev, "could not map interrupt\n");
  error = ENXIO;
  goto fail;
 }

 error = bus_setup_intr(dev, bktr->res_irq, INTR_TYPE_TTY,
                               ((void*)0), bktr_intr, bktr, &bktr->res_ih);
 if (error) {
  device_printf(dev, "could not setup irq\n");
  goto fail;

 }




 fun = pci_read_config( dev, 0x40, 2);
        fun = fun | 1;
 pci_write_config(dev, 0x40, fun, 2);
 latency = pci_read_config(dev, PCI_LATENCY_TIMER, 4);
 latency = (latency >> 8) & 0xff;
 if ( bootverbose ) {
  if (latency)
   printf("brooktree%d: PCI bus latency is", unit);
  else
   printf("brooktree%d: PCI bus latency was 0 changing to",
    unit);
 }
 if ( !latency ) {
  latency = 10;
  pci_write_config(dev, PCI_LATENCY_TIMER, latency<<8, 4);
 }
 if ( bootverbose ) {
  printf(" %d.\n", (int) latency);
 }


 fun = pci_get_devid(dev);
        rev = pci_get_revid(dev);


 common_bktr_attach( bktr, unit, fun, rev );


 bktr->bktrdev = make_dev(&bktr_cdevsw, unit,
    0, 0, 0444, "bktr%d", unit);
 bktr->tunerdev= make_dev(&bktr_cdevsw, unit+16,
    0, 0, 0444, "tuner%d", unit);
 bktr->vbidev = make_dev(&bktr_cdevsw, unit+32,
    0, 0, 0444, "vbi%d" , unit);
 return 0;

fail:
 if (bktr->res_irq)
  bus_release_resource(dev, SYS_RES_IRQ, bktr->irq_rid, bktr->res_irq);
 if (bktr->res_mem)
  bus_release_resource(dev, SYS_RES_MEMORY, bktr->mem_rid, bktr->res_mem);
 return error;

}
