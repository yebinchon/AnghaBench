
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {scalar_t__ ipmi_watchdog_active; } ;


 int IPMI_SET_WD_ACTION_POWER_CYCLE ;
 int ipmi_reset_watchdog (struct ipmi_softc*) ;
 int ipmi_set_watchdog (struct ipmi_softc*,scalar_t__) ;
 int on ;
 int wd_in_shutdown ;
 scalar_t__ wd_shutdown_countdown ;
 int wd_timer_actions ;

__attribute__((used)) static void
ipmi_shutdown_event(void *arg, unsigned int cmd, int *error)
{
 struct ipmi_softc *sc = arg;


 if (!on)
  return;
 wd_in_shutdown = 1;
 if (wd_shutdown_countdown == 0) {

  ipmi_set_watchdog(sc, 0);
  sc->ipmi_watchdog_active = 0;
 } else if (wd_shutdown_countdown > 0) {

  wd_timer_actions = IPMI_SET_WD_ACTION_POWER_CYCLE;
  ipmi_set_watchdog(sc, wd_shutdown_countdown);
  sc->ipmi_watchdog_active = wd_shutdown_countdown;
  ipmi_reset_watchdog(sc);
 }
}
