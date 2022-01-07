
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_dev; } ;


 int device_printf (int ,char*,int,int,int,int) ;

__attribute__((used)) static void
badrate(struct ath_softc *sc, int series, int hwrate, int tries, int status)
{

 device_printf(sc->sc_dev,
     "bad series%d hwrate 0x%x, tries %u ts_status 0x%x\n",
     series, hwrate, tries, status);
}
