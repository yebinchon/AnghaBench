
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct carp_softc {scalar_t__ sc_naddrs; scalar_t__ sc_naddrs6; int sc_state; int sc_advbase; int sc_advskew; int sc_ad_tmo; int sc_md6_tmo; int sc_md_tmo; TYPE_1__* sc_carpdev; } ;
typedef int sa_family_t ;
struct TYPE_2__ {int if_flags; scalar_t__ if_link_state; } ;





 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int IFF_UP ;

 scalar_t__ LINK_STATE_UP ;

 int V_carp_allow ;
 int callout_reset (int *,int ,int ,struct carp_softc*) ;
 int callout_stop (int *) ;
 int carp_master_down ;
 int carp_send_ad ;
 int carp_set_state (struct carp_softc*,int,char*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static void
carp_setrun(struct carp_softc *sc, sa_family_t af)
{
 struct timeval tv;

 CARP_LOCK_ASSERT(sc);

 if ((sc->sc_carpdev->if_flags & IFF_UP) == 0 ||
     sc->sc_carpdev->if_link_state != LINK_STATE_UP ||
     (sc->sc_naddrs == 0 && sc->sc_naddrs6 == 0) ||
     !V_carp_allow)
  return;

 switch (sc->sc_state) {
 case 129:
  carp_set_state(sc, 130, "initialization complete");
  carp_setrun(sc, 0);
  break;
 case 130:
  callout_stop(&sc->sc_ad_tmo);
  tv.tv_sec = 3 * sc->sc_advbase;
  tv.tv_usec = sc->sc_advskew * 1000000 / 256;
  switch (af) {
  default:
   break;
  }
  break;
 case 128:
  tv.tv_sec = sc->sc_advbase;
  tv.tv_usec = sc->sc_advskew * 1000000 / 256;
  callout_reset(&sc->sc_ad_tmo, tvtohz(&tv),
      carp_send_ad, sc);
  break;
 }
}
