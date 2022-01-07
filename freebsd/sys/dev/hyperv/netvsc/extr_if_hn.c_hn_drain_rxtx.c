
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hn_softc {struct vmbus_channel* hn_prichan; } ;


 int hn_chan_drain (struct hn_softc*,struct vmbus_channel*) ;
 struct vmbus_channel** vmbus_subchan_get (struct vmbus_channel*,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static void
hn_drain_rxtx(struct hn_softc *sc, int nchan)
{
 struct vmbus_channel **subch = ((void*)0);
 int nsubch;




 nsubch = nchan - 1;
 if (nsubch > 0)
  subch = vmbus_subchan_get(sc->hn_prichan, nsubch);

 if (subch != ((void*)0)) {
  int i;

  for (i = 0; i < nsubch; ++i)
   hn_chan_drain(sc, subch[i]);
 }
 hn_chan_drain(sc, sc->hn_prichan);

 if (subch != ((void*)0))
  vmbus_subchan_rel(subch, nsubch);
}
