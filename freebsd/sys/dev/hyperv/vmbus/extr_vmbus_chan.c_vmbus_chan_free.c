
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_subchan_cnt; int ch_stflags; scalar_t__ ch_refs; scalar_t__ ch_poll_intvl; int ch_txbr; int ch_rxbr; int ch_orphan_lock; int ch_subchan_lock; int ch_monprm; int ch_monprm_dma; int ch_id; int * ch_orphan_xact; int ch_subchans; } ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int VMBUS_CHAN_ST_ONLIST ;
 int VMBUS_CHAN_ST_ONPRIL ;
 int VMBUS_CHAN_ST_ONSUBL ;
 int VMBUS_CHAN_ST_OPENED ;
 int free (struct vmbus_channel*,int ) ;
 int hyperv_dmamem_free (int *,int ) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;
 int vmbus_rxbr_deinit (int *) ;
 int vmbus_txbr_deinit (int *) ;

__attribute__((used)) static void
vmbus_chan_free(struct vmbus_channel *chan)
{

 KASSERT(TAILQ_EMPTY(&chan->ch_subchans) && chan->ch_subchan_cnt == 0,
     ("still owns sub-channels"));
 KASSERT((chan->ch_stflags &
     (VMBUS_CHAN_ST_OPENED |
      VMBUS_CHAN_ST_ONPRIL |
      VMBUS_CHAN_ST_ONSUBL |
      VMBUS_CHAN_ST_ONLIST)) == 0, ("free busy channel"));
 KASSERT(chan->ch_orphan_xact == ((void*)0),
     ("still has orphan xact installed"));
 KASSERT(chan->ch_refs == 0, ("chan%u: invalid refcnt %d",
     chan->ch_id, chan->ch_refs));
 KASSERT(chan->ch_poll_intvl == 0, ("chan%u: polling is activated",
     chan->ch_id));

 hyperv_dmamem_free(&chan->ch_monprm_dma, chan->ch_monprm);
 mtx_destroy(&chan->ch_subchan_lock);
 sx_destroy(&chan->ch_orphan_lock);
 vmbus_rxbr_deinit(&chan->ch_rxbr);
 vmbus_txbr_deinit(&chan->ch_txbr);
 free(chan, M_DEVBUF);
}
