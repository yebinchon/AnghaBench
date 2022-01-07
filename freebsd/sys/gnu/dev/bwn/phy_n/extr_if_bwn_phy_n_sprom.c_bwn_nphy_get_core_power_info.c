
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int board_srom_rev; } ;
struct bwn_softc {int sc_dev; TYPE_1__ sc_board_info; } ;
struct bwn_phy_n_core_pwr_info {int maxpwr_2g; } ;
struct bwn_nphy_power_vars {int maxp2ga; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int EINVAL ;
 int ENXIO ;
 int bhnd_nvram_getvar_uint8 (int ,int ,int *) ;
 int bwn_nphy_get_core_power_info_r11 (struct bwn_softc*,struct bwn_nphy_power_vars const*,struct bwn_phy_n_core_pwr_info*) ;
 int bwn_nphy_get_core_power_info_r4_r10 (struct bwn_softc*,struct bwn_nphy_power_vars const*,struct bwn_phy_n_core_pwr_info*) ;
 struct bwn_nphy_power_vars* bwn_nphy_power_vars ;
 int memset (struct bwn_phy_n_core_pwr_info*,int,int) ;
 int nitems (struct bwn_nphy_power_vars*) ;

int
bwn_nphy_get_core_power_info(struct bwn_mac *mac, int core,
    struct bwn_phy_n_core_pwr_info *c)
{
 struct bwn_softc *sc;
 const struct bwn_nphy_power_vars *v;
 uint8_t sromrev;
 int error;

 sc = mac->mac_sc;

 if (core < 0 || core >= nitems(bwn_nphy_power_vars))
  return (EINVAL);

 sromrev = sc->sc_board_info.board_srom_rev;
 if (sromrev < 4)
  return (ENXIO);

 v = &bwn_nphy_power_vars[core];




 memset(c, 0x0, sizeof(*c));


 error = bhnd_nvram_getvar_uint8(sc->sc_dev, v->maxp2ga, &c->maxpwr_2g);
 if (error)
  return (error);


 if (sromrev >= 4 && sromrev <= 10)
  return (bwn_nphy_get_core_power_info_r4_r10(sc, v, c));
 else
  return (bwn_nphy_get_core_power_info_r11(sc, v, c));
}
