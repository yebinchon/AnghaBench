
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_prichans; int vmbus_prichan_lock; } ;
struct vmbus_channel {int ch_stflags; } ;


 int MA_OWNED ;
 int TAILQ_INSERT_TAIL (int *,struct vmbus_channel*,int ) ;
 int VMBUS_CHAN_ST_ONPRIL_SHIFT ;
 scalar_t__ atomic_testandset_int (int *,int ) ;
 int ch_prilink ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
vmbus_chan_ins_prilist(struct vmbus_softc *sc, struct vmbus_channel *chan)
{

 mtx_assert(&sc->vmbus_prichan_lock, MA_OWNED);
 if (atomic_testandset_int(&chan->ch_stflags,
     VMBUS_CHAN_ST_ONPRIL_SHIFT))
  panic("channel is already on the prilist");
 TAILQ_INSERT_TAIL(&sc->vmbus_prichans, chan, ch_prilink);
}
