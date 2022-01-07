
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_subchan_cnt; int ch_subchans; int ch_stflags; int ch_subchan_lock; } ;


 int MA_OWNED ;
 int TAILQ_INSERT_TAIL (int *,struct vmbus_channel*,int ) ;
 int VMBUS_CHAN_ST_ONSUBL_SHIFT ;
 scalar_t__ atomic_testandset_int (int *,int ) ;
 int ch_sublink ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
vmbus_chan_ins_sublist(struct vmbus_channel *prichan,
    struct vmbus_channel *chan)
{

 mtx_assert(&prichan->ch_subchan_lock, MA_OWNED);

 if (atomic_testandset_int(&chan->ch_stflags,
     VMBUS_CHAN_ST_ONSUBL_SHIFT))
  panic("channel is already on the sublist");
 TAILQ_INSERT_TAIL(&prichan->ch_subchans, chan, ch_sublink);


 prichan->ch_subchan_cnt++;
}
