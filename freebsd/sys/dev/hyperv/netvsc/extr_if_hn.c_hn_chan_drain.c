
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hn_softc {int hn_prichan; } ;


 int pause (char*,int) ;
 int vmbus_chan_intr_drain (struct vmbus_channel*) ;
 int vmbus_chan_is_revoked (int ) ;
 int vmbus_chan_rx_empty (struct vmbus_channel*) ;
 int vmbus_chan_tx_empty (struct vmbus_channel*) ;

__attribute__((used)) static void
hn_chan_drain(struct hn_softc *sc, struct vmbus_channel *chan)
{






 while (!vmbus_chan_rx_empty(chan) ||
     (!vmbus_chan_is_revoked(sc->hn_prichan) &&
      !vmbus_chan_tx_empty(chan)))
  pause("waitch", 1);
 vmbus_chan_intr_drain(chan);
}
