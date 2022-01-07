
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_dev; } ;


 int device_printf (int ,char*) ;
 int sec_primary_intr (void*) ;

__attribute__((used)) static void
sec_secondary_intr(void *arg)
{
 struct sec_softc *sc = arg;

 device_printf(sc->sc_dev, "spurious secondary interrupt!\n");
 sec_primary_intr(arg);
}
