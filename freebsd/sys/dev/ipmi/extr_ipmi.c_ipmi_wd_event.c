
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct ipmi_softc {unsigned int ipmi_watchdog_active; scalar_t__ ipmi_watchdog_actions; scalar_t__ ipmi_watchdog_pretimeout; } ;


 int EOPNOTSUPP ;
 unsigned int WD_INTERVAL ;
 scalar_t__ atomic_readandclear_int (unsigned int*) ;
 scalar_t__ dumping ;
 int ipmi_reset_watchdog (struct ipmi_softc*) ;
 int ipmi_set_watchdog (struct ipmi_softc*,unsigned int) ;
 int on ;
 scalar_t__ wd_in_shutdown ;
 scalar_t__ wd_pretimeout_countdown ;
 scalar_t__ wd_timer_actions ;

__attribute__((used)) static void
ipmi_wd_event(void *arg, unsigned int cmd, int *error)
{
 struct ipmi_softc *sc = arg;
 unsigned int timeout;
 int e;


 if (!on)
  return;







 if (wd_in_shutdown) {
  if (dumping && sc->ipmi_watchdog_active)
   ipmi_reset_watchdog(sc);
  return;
 }

 cmd &= WD_INTERVAL;
 if (cmd > 0 && cmd <= 63) {
  timeout = ((uint64_t)1 << cmd) / 1000000000;
  if (timeout == 0)
   timeout = 1;
  if (timeout != sc->ipmi_watchdog_active ||
      wd_timer_actions != sc->ipmi_watchdog_actions ||
      wd_pretimeout_countdown != sc->ipmi_watchdog_pretimeout) {
   e = ipmi_set_watchdog(sc, timeout);
   if (e == 0) {
    sc->ipmi_watchdog_active = timeout;
    sc->ipmi_watchdog_actions = wd_timer_actions;
    sc->ipmi_watchdog_pretimeout = wd_pretimeout_countdown;
   } else {
    (void)ipmi_set_watchdog(sc, 0);
    sc->ipmi_watchdog_active = 0;
    sc->ipmi_watchdog_actions = 0;
    sc->ipmi_watchdog_pretimeout = 0;
   }
  }
  if (sc->ipmi_watchdog_active != 0) {
   e = ipmi_reset_watchdog(sc);
   if (e == 0) {
    *error = 0;
   } else {
    (void)ipmi_set_watchdog(sc, 0);
    sc->ipmi_watchdog_active = 0;
    sc->ipmi_watchdog_actions = 0;
    sc->ipmi_watchdog_pretimeout = 0;
   }
  }
 } else if (atomic_readandclear_int(&sc->ipmi_watchdog_active) != 0) {
  sc->ipmi_watchdog_actions = 0;
  sc->ipmi_watchdog_pretimeout = 0;

  e = ipmi_set_watchdog(sc, 0);
  if (e != 0 && cmd == 0)
   *error = EOPNOTSUPP;
 }
}
