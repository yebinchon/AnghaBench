
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musbotg_td {int channel; } ;
struct musbotg_softc {scalar_t__ sc_mode; int sc_channel_mask; } ;


 int DPRINTFN (int,char*,int) ;
 scalar_t__ MUSB2_DEVICE_MODE ;
 int musbotg_ep_int_set (struct musbotg_softc*,int,int ) ;

__attribute__((used)) static void
musbotg_channel_free(struct musbotg_softc *sc, struct musbotg_td *td)
{

 DPRINTFN(1, "ep_no=%d\n", td->channel);

 if (sc->sc_mode == MUSB2_DEVICE_MODE)
  return;

 if (td == ((void*)0))
  return;
 if (td->channel == -1)
  return;

 musbotg_ep_int_set(sc, td->channel, 0);
 sc->sc_channel_mask &= ~(1 << td->channel);

 td->channel = -1;
}
