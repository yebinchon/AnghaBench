
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_vaps; } ;
struct otus_softc {int led_state; int sc_curchan; struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;


 int AR_GPIO_REG_PORT_DATA ;
 int AR_LED0_ON ;
 int AR_LED1_ON ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 scalar_t__ IEEE80211_S_INIT ;
 scalar_t__ IEEE80211_S_RUN ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int otus_write (struct otus_softc*,int ,int) ;
 scalar_t__ otus_write_barrier (struct otus_softc*) ;

void
otus_led_newstate_type3(struct otus_softc *sc)
{
}
