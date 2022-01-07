
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union mly_command_packet {int dummy; } mly_command_packet ;
struct mly_softc {int mly_doorbell_true; int mly_interrupt_mask; int mly_interrupt_status; int mly_error_status; int mly_odbr; int mly_idbr; int mly_status_mailbox; int mly_command_mailbox; int mly_hwif; int mly_dev; int mly_packet_dmat; int mly_parent_dmat; int mly_buffer_dmat; int mly_lock; int mly_intr; int * mly_irq; scalar_t__ mly_irq_rid; scalar_t__ mly_regs_rid; int * mly_regs_resource; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int hwif; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int DFLTPHYS ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;


 int MLY_I960RX_COMMAND_MAILBOX ;
 int MLY_I960RX_ERROR_STATUS ;
 int MLY_I960RX_IDBR ;
 int MLY_I960RX_INTERRUPT_MASK ;
 int MLY_I960RX_INTERRUPT_STATUS ;
 int MLY_I960RX_ODBR ;
 int MLY_I960RX_STATUS_MAILBOX ;
 int MLY_MAX_COMMANDS ;
 int MLY_MAX_SGENTRIES ;
 int MLY_STRONGARM_COMMAND_MAILBOX ;
 int MLY_STRONGARM_ERROR_STATUS ;
 int MLY_STRONGARM_IDBR ;
 int MLY_STRONGARM_INTERRUPT_MASK ;
 int MLY_STRONGARM_INTERRUPT_STATUS ;
 int MLY_STRONGARM_ODBR ;
 int MLY_STRONGARM_STATUS_MAILBOX ;
 scalar_t__ PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct mly_softc*,int *) ;
 int * busdma_lock_mutex ;
 int debug (int,char*) ;
 int debug_called (int) ;
 TYPE_1__* mly_identifiers ;
 int mly_intr ;
 int mly_mmbox_map (struct mly_softc*) ;
 int mly_printf (struct mly_softc*,char*) ;
 int mly_sg_map (struct mly_softc*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
mly_pci_attach(struct mly_softc *sc)
{
    int i, error;

    debug_called(1);


    error = ENXIO;




    pci_enable_busmaster(sc->mly_dev);




    sc->mly_regs_rid = PCIR_BAR(0);
    if ((sc->mly_regs_resource = bus_alloc_resource_any(sc->mly_dev,
     SYS_RES_MEMORY, &sc->mly_regs_rid, RF_ACTIVE)) == ((void*)0)) {
 mly_printf(sc, "can't allocate register window\n");
 goto fail;
    }




    sc->mly_irq_rid = 0;
    if ((sc->mly_irq = bus_alloc_resource_any(sc->mly_dev, SYS_RES_IRQ,
      &sc->mly_irq_rid, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
 mly_printf(sc, "can't allocate interrupt\n");
 goto fail;
    }
    if (bus_setup_intr(sc->mly_dev, sc->mly_irq, INTR_TYPE_CAM | INTR_ENTROPY | INTR_MPSAFE, ((void*)0), mly_intr, sc, &sc->mly_intr)) {
 mly_printf(sc, "can't set up interrupt\n");
 goto fail;
    }


    error = ENOMEM;






    if (bus_dma_tag_create(bus_get_dma_tag(sc->mly_dev),
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_SPACE_UNRESTRICTED,
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_DMA_ALLOCNOW,
      ((void*)0),
      ((void*)0),
      &sc->mly_parent_dmat)) {
 mly_printf(sc, "can't allocate parent DMA tag\n");
 goto fail;
    }




    if (bus_dma_tag_create(sc->mly_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      DFLTPHYS,
      MLY_MAX_SGENTRIES,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      busdma_lock_mutex,
      &sc->mly_lock,
      &sc->mly_buffer_dmat)) {
 mly_printf(sc, "can't allocate buffer DMA tag\n");
 goto fail;
    }




    if (bus_dma_tag_create(sc->mly_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sizeof(union mly_command_packet) * MLY_MAX_COMMANDS, 1,
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_DMA_ALLOCNOW,
      ((void*)0), ((void*)0),
      &sc->mly_packet_dmat)) {
 mly_printf(sc, "can't allocate command packet DMA tag\n");
 goto fail;
    }




    for (i = 0; mly_identifiers[i].vendor != 0; i++) {
 if ((mly_identifiers[i].vendor == pci_get_vendor(sc->mly_dev)) &&
     (mly_identifiers[i].device == pci_get_device(sc->mly_dev))) {
     sc->mly_hwif = mly_identifiers[i].hwif;
     switch(sc->mly_hwif) {
     case 129:
  debug(1, "set hardware up for i960RX");
  sc->mly_doorbell_true = 0x00;
  sc->mly_command_mailbox = MLY_I960RX_COMMAND_MAILBOX;
  sc->mly_status_mailbox = MLY_I960RX_STATUS_MAILBOX;
  sc->mly_idbr = MLY_I960RX_IDBR;
  sc->mly_odbr = MLY_I960RX_ODBR;
  sc->mly_error_status = MLY_I960RX_ERROR_STATUS;
  sc->mly_interrupt_status = MLY_I960RX_INTERRUPT_STATUS;
  sc->mly_interrupt_mask = MLY_I960RX_INTERRUPT_MASK;
  break;
     case 128:
  debug(1, "set hardware up for StrongARM");
  sc->mly_doorbell_true = 0xff;
  sc->mly_command_mailbox = MLY_STRONGARM_COMMAND_MAILBOX;
  sc->mly_status_mailbox = MLY_STRONGARM_STATUS_MAILBOX;
  sc->mly_idbr = MLY_STRONGARM_IDBR;
  sc->mly_odbr = MLY_STRONGARM_ODBR;
  sc->mly_error_status = MLY_STRONGARM_ERROR_STATUS;
  sc->mly_interrupt_status = MLY_STRONGARM_INTERRUPT_STATUS;
  sc->mly_interrupt_mask = MLY_STRONGARM_INTERRUPT_MASK;
  break;
     }
     break;
 }
    }




    if ((error = mly_sg_map(sc)))
 goto fail;




    if ((error = mly_mmbox_map(sc)))
 goto fail;

    error = 0;

fail:
    return(error);
}
