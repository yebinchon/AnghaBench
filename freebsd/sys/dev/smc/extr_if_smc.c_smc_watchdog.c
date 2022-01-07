
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_intr; int smc_tq; int smc_dev; } ;


 int device_printf (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
smc_watchdog(void *arg)
{
 struct smc_softc *sc;

 sc = (struct smc_softc *)arg;
 device_printf(sc->smc_dev, "watchdog timeout\n");
 taskqueue_enqueue(sc->smc_tq, &sc->smc_intr);
}
