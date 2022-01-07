
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_frames; } ;
struct cgem_softc {scalar_t__ rx_frames_prev; int net_ctl_shadow; int tick_ch; TYPE_1__ stats; scalar_t__ rxhangwar; int * miibus; } ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_NET_CTRL ;
 int CGEM_NET_CTRL_RX_EN ;
 int DELAY (int) ;
 int WR4 (struct cgem_softc*,int ,int) ;
 int callout_reset (int *,int ,void (*) (void*),struct cgem_softc*) ;
 int cgem_poll_hw_stats (struct cgem_softc*) ;
 struct mii_data* device_get_softc (int *) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
cgem_tick(void *arg)
{
 struct cgem_softc *sc = (struct cgem_softc *)arg;
 struct mii_data *mii;

 CGEM_ASSERT_LOCKED(sc);


 if (sc->miibus != ((void*)0)) {
  mii = device_get_softc(sc->miibus);
  mii_tick(mii);
 }


 cgem_poll_hw_stats(sc);


 if (sc->rxhangwar && sc->rx_frames_prev == sc->stats.rx_frames) {





  WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow &
      ~CGEM_NET_CTRL_RX_EN);
  DELAY(1);
  WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);
 }
 sc->rx_frames_prev = sc->stats.rx_frames;


 callout_reset(&sc->tick_ch, hz, cgem_tick, sc);
}
