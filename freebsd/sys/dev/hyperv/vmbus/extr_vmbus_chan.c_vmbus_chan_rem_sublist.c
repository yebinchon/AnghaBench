
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ ch_subchan_cnt; int ch_subchans; int ch_stflags; int ch_subchan_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TAILQ_REMOVE (int *,struct vmbus_channel*,int ) ;
 int VMBUS_CHAN_ST_ONSUBL_SHIFT ;
 scalar_t__ atomic_testandclear_int (int *,int ) ;
 int ch_sublink ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
vmbus_chan_rem_sublist(struct vmbus_channel *prichan,
    struct vmbus_channel *chan)
{

 mtx_assert(&prichan->ch_subchan_lock, MA_OWNED);

 KASSERT(prichan->ch_subchan_cnt > 0,
     ("invalid subchan_cnt %d", prichan->ch_subchan_cnt));
 prichan->ch_subchan_cnt--;

 if (atomic_testandclear_int(&chan->ch_stflags,
     VMBUS_CHAN_ST_ONSUBL_SHIFT) == 0)
  panic("channel is not on the sublist");
 TAILQ_REMOVE(&prichan->ch_subchans, chan, ch_sublink);
}
