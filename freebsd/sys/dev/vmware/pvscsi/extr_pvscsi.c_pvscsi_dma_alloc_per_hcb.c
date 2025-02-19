
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ paddr; scalar_t__ vaddr; } ;
struct pvscsi_softc {int hcb_cnt; int free_list; struct pvscsi_hcb* hcbs; int lock; TYPE_1__ sg_list_dma; TYPE_1__ sense_buffer_dma; int dev; int buffer_dmat; } ;
struct pvscsi_sg_list {int dummy; } ;
struct pvscsi_hcb {int callout; scalar_t__ sg_list_paddr; struct pvscsi_sg_list* sg_list; scalar_t__ sense_buffer_paddr; void* sense_buffer; int dma_map; } ;
typedef scalar_t__ caddr_t ;


 int PVSCSI_SENSE_LENGTH ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct pvscsi_hcb*,int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_printf (int ,char*,int,...) ;
 int links ;
 int pvscsi_dma_alloc (struct pvscsi_softc*,TYPE_1__*,int,int) ;
 int pvscsi_dma_free_per_hcb (struct pvscsi_softc*,int) ;

__attribute__((used)) static int
pvscsi_dma_alloc_per_hcb(struct pvscsi_softc *sc)
{
 int i;
 int error;
 struct pvscsi_hcb *hcb;

 i = 0;

 error = pvscsi_dma_alloc(sc, &sc->sg_list_dma,
     sizeof(struct pvscsi_sg_list) * sc->hcb_cnt, 1);
 if (error) {
  device_printf(sc->dev,
      "Error allocation sg list DMA memory, error %d\n", error);
  goto fail;
 }

 error = pvscsi_dma_alloc(sc, &sc->sense_buffer_dma,
     PVSCSI_SENSE_LENGTH * sc->hcb_cnt, 1);
 if (error) {
  device_printf(sc->dev,
      "Error allocation sg list DMA memory, error %d\n", error);
  goto fail;
 }

 for (i = 0; i < sc->hcb_cnt; ++i) {
  hcb = sc->hcbs + i;

  error = bus_dmamap_create(sc->buffer_dmat, 0, &hcb->dma_map);
  if (error) {
   device_printf(sc->dev,
       "Error creating dma map for hcb %d, error %d\n",
       i, error);
   goto fail;
  }

  hcb->sense_buffer =
      (void *)((caddr_t)sc->sense_buffer_dma.vaddr +
      PVSCSI_SENSE_LENGTH * i);
  hcb->sense_buffer_paddr =
      sc->sense_buffer_dma.paddr + PVSCSI_SENSE_LENGTH * i;

  hcb->sg_list =
      (struct pvscsi_sg_list *)((caddr_t)sc->sg_list_dma.vaddr +
      sizeof(struct pvscsi_sg_list) * i);
  hcb->sg_list_paddr =
      sc->sg_list_dma.paddr + sizeof(struct pvscsi_sg_list) * i;

  callout_init_mtx(&hcb->callout, &sc->lock, 0);
 }

 SLIST_INIT(&sc->free_list);
 for (i = (sc->hcb_cnt - 1); i >= 0; --i) {
  hcb = sc->hcbs + i;
  SLIST_INSERT_HEAD(&sc->free_list, hcb, links);
 }

fail:
 if (error) {
  pvscsi_dma_free_per_hcb(sc, i);
 }

 return (error);
}
