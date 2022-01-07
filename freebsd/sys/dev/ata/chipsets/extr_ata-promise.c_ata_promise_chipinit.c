
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ata_promise_sx4 {int busy; int queue; int mtx; } ;
struct ata_pci_controller {int channels; void* r_res1; void* r_rid1; void* r_type1; void* r_res2; void* r_rid2; void* r_type2; int getrev; void* setmode; void* reset; void* ch_detach; void* ch_attach; TYPE_1__* chip; struct ata_promise_sx4* chipset_data; int handle; int r_irq; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; int const cfg2; } ;


 int ATA_INB (void*,int) ;
 int ATA_INL (void*,int) ;
 int ATA_INTR_FLAGS ;
 int ATA_OUTB (void*,int,int) ;
 int ATA_OUTL (void*,int,int) ;
 int BUS_SPACE_MAP_LINEAR ;
 int ENXIO ;
 int MTX_DEF ;
 int M_ATAPCI ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 int const PR_SX4X ;

 int RF_ACTIVE ;
 void* SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int ata_generic_intr ;
 void* ata_pci_ch_detach ;
 void* ata_promise_ch_attach ;
 void* ata_promise_mio_ch_attach ;
 void* ata_promise_mio_ch_detach ;
 int ata_promise_mio_getrev ;
 int ata_promise_mio_intr ;
 void* ata_promise_mio_reset ;
 void* ata_promise_mio_setmode ;
 void* ata_promise_setmode ;
 int ata_promise_sx4_intr ;
 void* ata_promise_tx2_ch_attach ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 void* bus_alloc_resource_any (int ,void*,void**,int ) ;
 int bus_release_resource (int ,void*,void*,void*) ;
 int bus_setup_intr (int ,int ,int ,int *,int ,struct ata_pci_controller*,int *) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 struct ata_promise_sx4* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;

__attribute__((used)) static int
ata_promise_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    int stat_reg;

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    switch (ctlr->chip->cfg1) {
    case 133:

 ATA_OUTB(ctlr->r_res1, 0x11, ATA_INB(ctlr->r_res1, 0x11) | 0x0a);


    case 132:

 ATA_OUTB(ctlr->r_res1, 0x1f, ATA_INB(ctlr->r_res1, 0x1f) | 0x01);
 ctlr->ch_attach = ata_promise_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_promise_setmode;
 return 0;

    case 128:
 ctlr->ch_attach = ata_promise_tx2_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_promise_setmode;
 return 0;

    case 134:
 ctlr->r_type1 = SYS_RES_MEMORY;
 ctlr->r_rid1 = PCIR_BAR(4);
 if (!(ctlr->r_res1 = bus_alloc_resource_any(dev, ctlr->r_type1,
          &ctlr->r_rid1, RF_ACTIVE)))
     goto failnfree;
 ctlr->r_type2 = SYS_RES_MEMORY;
 ctlr->r_rid2 = PCIR_BAR(3);
 if (!(ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
          &ctlr->r_rid2, RF_ACTIVE)))
     goto failnfree;

 if (ctlr->chip->cfg2 == PR_SX4X) {
     struct ata_promise_sx4 *hpkt;
     u_int32_t dimm = ATA_INL(ctlr->r_res2, 0x000c0080);

     if (bus_teardown_intr(dev, ctlr->r_irq, ctlr->handle) ||
  bus_setup_intr(dev, ctlr->r_irq, ATA_INTR_FLAGS, ((void*)0),
          ata_promise_sx4_intr, ctlr, &ctlr->handle)) {
  device_printf(dev, "unable to setup interrupt\n");
  goto failnfree;
     }


     device_printf(dev, "DIMM size %dMB @ 0x%08x%s\n",
     (((dimm >> 16) & 0xff)-((dimm >> 24) & 0xff)+1) << 4,
     ((dimm >> 24) & 0xff),
     ATA_INL(ctlr->r_res2, 0x000c0088) & (1<<16) ?
     " ECC enabled" : "" );


     ATA_OUTL(ctlr->r_res2, 0x000c000c,
       (ATA_INL(ctlr->r_res2, 0x000c000c) & 0xffff0000));


     hpkt = malloc(sizeof(struct ata_promise_sx4),
     M_ATAPCI, M_NOWAIT | M_ZERO);
     if (hpkt == ((void*)0)) {
  device_printf(dev, "Cannot allocate HPKT\n");
  goto failnfree;
     }
     mtx_init(&hpkt->mtx, "ATA promise HPKT lock", ((void*)0), MTX_DEF);
     TAILQ_INIT(&hpkt->queue);
     hpkt->busy = 0;
     ctlr->chipset_data = hpkt;
     ctlr->ch_attach = ata_promise_mio_ch_attach;
     ctlr->ch_detach = ata_promise_mio_ch_detach;
     ctlr->reset = ata_promise_mio_reset;
     ctlr->setmode = ata_promise_setmode;
     ctlr->channels = 4;
     return 0;
 }


 if (bus_teardown_intr(dev, ctlr->r_irq, ctlr->handle) ||
     bus_setup_intr(dev, ctlr->r_irq, ATA_INTR_FLAGS, ((void*)0),
          ata_promise_mio_intr, ctlr, &ctlr->handle)) {
  device_printf(dev, "unable to setup interrupt\n");
  goto failnfree;
 }

 switch (ctlr->chip->cfg2) {
 case 131:
     ctlr->channels = ((ATA_INL(ctlr->r_res2, 0x48) & 0x01) > 0) +
        ((ATA_INL(ctlr->r_res2, 0x48) & 0x02) > 0) + 2;
     goto sata150;
 case 136:
     ctlr->channels = 3;
     goto sata150;
 case 130:
     ctlr->channels = 4;
sata150:
     stat_reg = 0x6c;
     break;

 case 135:
     ctlr->channels = 3;
     goto sataii;
 case 129:
 default:
     ctlr->channels = 4;
sataii:
     stat_reg = 0x60;
     break;
 }


 ctlr->chipset_data = (void *)(uintptr_t)0xffffffff;


 ATA_OUTL(ctlr->r_res2, stat_reg, 0x000000ff);


 if ((ctlr->chip->cfg2 == 129) || (ctlr->chip->cfg2 == 135))
     ATA_OUTL(ctlr->r_res2, 0x44, ATA_INL(ctlr->r_res2, 0x44) | 0x2000);

 ctlr->ch_attach = ata_promise_mio_ch_attach;
 ctlr->ch_detach = ata_promise_mio_ch_detach;
 ctlr->reset = ata_promise_mio_reset;
 ctlr->setmode = ata_promise_mio_setmode;
 ctlr->getrev = ata_promise_mio_getrev;

 return 0;
    }

failnfree:
    if (ctlr->r_res2)
 bus_release_resource(dev, ctlr->r_type2, ctlr->r_rid2, ctlr->r_res2);
    if (ctlr->r_res1)
 bus_release_resource(dev, ctlr->r_type1, ctlr->r_rid1, ctlr->r_res1);
    return ENXIO;
}
