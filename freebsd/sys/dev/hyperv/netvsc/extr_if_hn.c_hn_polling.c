
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vmbus_channel {int dummy; } ;
struct hn_softc {int hn_rx_ring_inuse; struct vmbus_channel* hn_prichan; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int hn_chan_polling (struct vmbus_channel*,int ) ;
 struct vmbus_channel** vmbus_subchan_get (struct vmbus_channel*,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static void
hn_polling(struct hn_softc *sc, u_int pollhz)
{
 int nsubch = sc->hn_rx_ring_inuse - 1;

 HN_LOCK_ASSERT(sc);

 if (nsubch > 0) {
  struct vmbus_channel **subch;
  int i;

  subch = vmbus_subchan_get(sc->hn_prichan, nsubch);
  for (i = 0; i < nsubch; ++i)
   hn_chan_polling(subch[i], pollhz);
  vmbus_subchan_rel(subch, nsubch);
 }
 hn_chan_polling(sc->hn_prichan, pollhz);
}
