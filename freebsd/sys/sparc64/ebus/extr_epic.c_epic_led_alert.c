
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epic_softc {int dummy; } ;


 int EPIC_FW_LED_WRITE (struct epic_softc*,int ,int ,int ) ;
 int EPIC_LED_ALERT_MASK ;
 int EPIC_LED_ALERT_OFF ;
 int EPIC_LED_ALERT_ON ;
 int EPIC_LED_STATE0 ;
 int EPIC_LOCK (struct epic_softc*) ;
 int EPIC_UNLOCK (struct epic_softc*) ;

__attribute__((used)) static void
epic_led_alert(void *arg, int onoff)
{
 struct epic_softc *sc;

 sc = (struct epic_softc *)arg;

 EPIC_LOCK(sc);
 EPIC_FW_LED_WRITE(sc, EPIC_LED_STATE0, EPIC_LED_ALERT_MASK,
     onoff ? EPIC_LED_ALERT_ON : EPIC_LED_ALERT_OFF);
 EPIC_UNLOCK(sc);
}
