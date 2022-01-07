
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_dev; } ;
struct vmbus_channel {int ch_refs; int ch_poll_timeo; int ch_poll_task; int ch_txbr; int ch_rxbr; int ch_subchans; int ch_orphan_lock; int ch_subchan_lock; struct vmbus_softc* ch_vmbus; int * ch_monprm; int ch_monprm_dma; } ;
struct hyperv_mon_param {int dummy; } ;


 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int HYPERCALL_PARAM_ALIGN ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct vmbus_channel*) ;
 int bus_get_dma_tag (int ) ;
 int callout_init (int *,int) ;
 int device_printf (int ,char*) ;
 int free (struct vmbus_channel*,int ) ;
 int * hyperv_dmamem_alloc (int ,int ,int ,int,int *,int) ;
 struct vmbus_channel* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_init (int *,char*) ;
 int vmbus_chan_poll_task ;
 int vmbus_rxbr_init (int *) ;
 int vmbus_txbr_init (int *) ;

__attribute__((used)) static struct vmbus_channel *
vmbus_chan_alloc(struct vmbus_softc *sc)
{
 struct vmbus_channel *chan;

 chan = malloc(sizeof(*chan), M_DEVBUF, M_WAITOK | M_ZERO);

 chan->ch_monprm = hyperv_dmamem_alloc(bus_get_dma_tag(sc->vmbus_dev),
     HYPERCALL_PARAM_ALIGN, 0, sizeof(struct hyperv_mon_param),
     &chan->ch_monprm_dma, BUS_DMA_WAITOK | BUS_DMA_ZERO);
 if (chan->ch_monprm == ((void*)0)) {
  device_printf(sc->vmbus_dev, "monprm alloc failed\n");
  free(chan, M_DEVBUF);
  return ((void*)0);
 }

 chan->ch_refs = 1;
 chan->ch_vmbus = sc;
 mtx_init(&chan->ch_subchan_lock, "vmbus subchan", ((void*)0), MTX_DEF);
 sx_init(&chan->ch_orphan_lock, "vmbus chorphan");
 TAILQ_INIT(&chan->ch_subchans);
 vmbus_rxbr_init(&chan->ch_rxbr);
 vmbus_txbr_init(&chan->ch_txbr);

 TASK_INIT(&chan->ch_poll_task, 0, vmbus_chan_poll_task, chan);
 callout_init(&chan->ch_poll_timeo, 1);

 return chan;
}
