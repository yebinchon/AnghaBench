
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_softc {int * sc_pmu; int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int ENXIO ;
 int bhnd_pmu_write_chipctrl (int *,int,int,int) ;
 int device_printf (int ,char*) ;

int
bwn_wireless_core_phy_pll_reset(struct bwn_mac *mac)
{
 struct bwn_softc *sc;
 uint32_t pll_flag;

 sc = mac->mac_sc;

 if (sc->sc_pmu == ((void*)0)) {
  device_printf(sc->sc_dev, "PMU device not found\n");
  return (ENXIO);
 }

 pll_flag = 0x4;
 bhnd_pmu_write_chipctrl(sc->sc_pmu, 0x0, 0x0, pll_flag);
 bhnd_pmu_write_chipctrl(sc->sc_pmu, 0x0, pll_flag, pll_flag);
 bhnd_pmu_write_chipctrl(sc->sc_pmu, 0x0, 0x0, pll_flag);

 return (0);
}
