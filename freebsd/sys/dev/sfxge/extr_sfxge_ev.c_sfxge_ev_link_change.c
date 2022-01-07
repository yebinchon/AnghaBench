
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dummy; } ;
struct sfxge_evq {struct sfxge_softc* sc; } ;
typedef int efx_link_mode_t ;
typedef int boolean_t ;


 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 int sfxge_mac_link_update (struct sfxge_softc*,int ) ;

__attribute__((used)) static boolean_t
sfxge_ev_link_change(void *arg, efx_link_mode_t link_mode)
{
 struct sfxge_evq *evq;
 struct sfxge_softc *sc;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 sc = evq->sc;

 sfxge_mac_link_update(sc, link_mode);

 return (0);
}
