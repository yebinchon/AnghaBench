
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ida_softc {int regs_res_id; int ih; int * irq; int irq_res_type; int parent_dmat; int * regs; int regs_res_type; int lock; int ch; int flags; int cmd; int dev; } ;
struct ida_board {int flags; int * accessor; } ;
typedef int device_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 scalar_t__ IDA_DEVICEID_DEC_SMART ;
 int IDA_PCI_MEMADDR ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MTX_DEF ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ida_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ida_free (struct ida_softc*) ;
 int ida_intr ;
 struct ida_board* ida_pci_match (int ) ;
 int ida_setup (struct ida_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
ida_pci_attach(device_t dev)
{
 struct ida_board *board = ida_pci_match(dev);
 u_int32_t id = pci_get_devid(dev);
 struct ida_softc *ida;
 int error, rid;

 ida = (struct ida_softc *)device_get_softc(dev);
 ida->dev = dev;
 ida->cmd = *board->accessor;
 ida->flags = board->flags;
 mtx_init(&ida->lock, "ida", ((void*)0), MTX_DEF);
 callout_init_mtx(&ida->ch, &ida->lock, 0);

 ida->regs_res_type = SYS_RES_MEMORY;
 ida->regs_res_id = IDA_PCI_MEMADDR;
 if (id == IDA_DEVICEID_DEC_SMART)
  ida->regs_res_id = PCIR_BAR(0);

 ida->regs = bus_alloc_resource_any(dev, ida->regs_res_type,
     &ida->regs_res_id, RF_ACTIVE);
 if (ida->regs == ((void*)0)) {
  device_printf(dev, "can't allocate memory resources\n");
  return (ENOMEM);
 }

 error = bus_dma_tag_create(
               bus_get_dma_tag(dev),
                  1,
                 0,
                BUS_SPACE_MAXADDR_32BIT,
                 BUS_SPACE_MAXADDR,
               ((void*)0),
                  ((void*)0),
                BUS_SPACE_MAXSIZE_32BIT,
                  BUS_SPACE_UNRESTRICTED,
                   BUS_SPACE_MAXSIZE_32BIT,
              BUS_DMA_ALLOCNOW,
                 ((void*)0),
                ((void*)0),
  &ida->parent_dmat);
 if (error != 0) {
  device_printf(dev, "can't allocate DMA tag\n");
  ida_free(ida);
  return (ENOMEM);
 }

 rid = 0;
 ida->irq_res_type = SYS_RES_IRQ;
 ida->irq = bus_alloc_resource_any(dev, ida->irq_res_type, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (ida->irq == ((void*)0)) {
         ida_free(ida);
         return (ENOMEM);
 }
 error = bus_setup_intr(dev, ida->irq, INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE,
     ((void*)0), ida_intr, ida, &ida->ih);
 if (error) {
  device_printf(dev, "can't setup interrupt\n");
  ida_free(ida);
  return (ENOMEM);
 }

 error = ida_setup(ida);
 if (error) {
         ida_free(ida);
         return (error);
 }

 return (0);
}
