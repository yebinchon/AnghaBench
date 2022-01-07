
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_modem_softc {int sc_throughput; } ;


 int g_modem_throughput ;
 int g_modem_watchdog_reset (struct g_modem_softc*) ;

__attribute__((used)) static void
g_modem_watchdog(void *arg)
{
 struct g_modem_softc *sc = arg;
 int i;

 i = sc->sc_throughput;

 sc->sc_throughput = 0;

 g_modem_throughput = i;

 g_modem_watchdog_reset(sc);
}
