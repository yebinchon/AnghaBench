
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;
struct ar8327_sgmii_cfg {int sgmii_ctrl; int serdes_aen; } ;


 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
ar8327_fetch_pdata_sgmii(struct arswitch_softc *sc,
    struct ar8327_sgmii_cfg *scfg)
{
 int val;


 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "sgmii.ctrl", &val) != 0)
  return (0);
 scfg->sgmii_ctrl = val;


 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "sgmii.serdes_aen", &val) != 0)
  return (0);
 scfg->serdes_aen = val;

 return (1);
}
