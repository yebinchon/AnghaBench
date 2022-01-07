
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct storvsc_softc {int hs_nchan; struct vmbus_channel** hs_sel_chan; struct vmbus_channel* hs_chan; } ;


 struct vmbus_channel** vmbus_subchan_get (struct vmbus_channel*,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static void
storvsc_create_chan_sel(struct storvsc_softc *sc)
{
 struct vmbus_channel **subch;
 int i, nsubch;

 sc->hs_sel_chan[0] = sc->hs_chan;
 nsubch = sc->hs_nchan - 1;
 if (nsubch == 0)
  return;

 subch = vmbus_subchan_get(sc->hs_chan, nsubch);
 for (i = 0; i < nsubch; i++)
  sc->hs_sel_chan[i + 1] = subch[i];
 vmbus_subchan_rel(subch, nsubch);
}
