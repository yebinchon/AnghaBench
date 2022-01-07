
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida_softc {int lock; int * regs; int regs_res_id; int regs_res_type; int dev; int * parent_dmat; int * irq; int irq_res_type; TYPE_1__* qcbs; int * hwqcb_dmat; int hwqcb_dmamap; scalar_t__ hwqcbs; scalar_t__ hwqcb_busaddr; int * buffer_dmat; int ch; int * ih; } ;
struct TYPE_2__ {int dmamap; } ;


 int IDA_QCB_MAX ;
 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ida_free(struct ida_softc *ida)
{
 int i;

 if (ida->ih != ((void*)0))
  bus_teardown_intr(ida->dev, ida->irq, ida->ih);

 mtx_lock(&ida->lock);
 callout_stop(&ida->ch);
 mtx_unlock(&ida->lock);
 callout_drain(&ida->ch);

 if (ida->buffer_dmat) {
  for (i = 0; i < IDA_QCB_MAX; i++)
   bus_dmamap_destroy(ida->buffer_dmat, ida->qcbs[i].dmamap);
  bus_dma_tag_destroy(ida->buffer_dmat);
 }

 if (ida->hwqcb_dmat) {
  if (ida->hwqcb_busaddr)
   bus_dmamap_unload(ida->hwqcb_dmat, ida->hwqcb_dmamap);
  if (ida->hwqcbs)
   bus_dmamem_free(ida->hwqcb_dmat, ida->hwqcbs,
       ida->hwqcb_dmamap);
  bus_dma_tag_destroy(ida->hwqcb_dmat);
 }

 if (ida->qcbs != ((void*)0))
  free(ida->qcbs, M_DEVBUF);

 if (ida->irq != ((void*)0))
  bus_release_resource(ida->dev, ida->irq_res_type,
      0, ida->irq);

 if (ida->parent_dmat != ((void*)0))
  bus_dma_tag_destroy(ida->parent_dmat);

 if (ida->regs != ((void*)0))
  bus_release_resource(ida->dev, ida->regs_res_type,
      ida->regs_res_id, ida->regs);

 mtx_destroy(&ida->lock);
}
