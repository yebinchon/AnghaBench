
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; } ;
struct bwn_phy_n_core_pwr_info {int itssi_5g; int itssi_2g; } ;
struct bwn_nphy_power_vars {int itt5ga; int itt2ga; } ;


 int bhnd_nvram_getvar_uint8 (int ,int ,int *) ;

__attribute__((used)) static int
bwn_nphy_get_core_power_info_r4_r10(struct bwn_softc *sc,
    const struct bwn_nphy_power_vars *v, struct bwn_phy_n_core_pwr_info *c)
{
 int error;


 error = bhnd_nvram_getvar_uint8(sc->sc_dev, v->itt2ga, &c->itssi_2g);
 if (error)
  return (error);


 error = bhnd_nvram_getvar_uint8(sc->sc_dev, v->itt5ga, &c->itssi_5g);
 if (error)
  return (error);

 return (0);
}
