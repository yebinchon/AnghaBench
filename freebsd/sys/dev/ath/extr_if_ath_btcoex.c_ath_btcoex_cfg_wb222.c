
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_dev; } ;


 int ath_btcoex_cfg_mci (struct ath_softc*,int,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ath_btcoex_cfg_wb222(struct ath_softc *sc)
{

 device_printf(sc->sc_dev, "Enabling WB222 BTCOEX\n");

 return (ath_btcoex_cfg_mci(sc, 0x2201, 1));
}
