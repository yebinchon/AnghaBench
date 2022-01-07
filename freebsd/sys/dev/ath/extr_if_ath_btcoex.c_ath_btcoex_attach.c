
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_dev; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;


 int ath_btcoex_cfg_wb195 (struct ath_softc*) ;
 int ath_btcoex_cfg_wb222 (struct ath_softc*) ;
 int ath_btcoex_cfg_wb225 (struct ath_softc*) ;
 int ath_btcoex_cfg_wb335b (struct ath_softc*) ;
 int ath_hal_btcoex_supported (struct ath_hal*) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int resource_string_value (int ,int ,char*,char const**) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
ath_btcoex_attach(struct ath_softc *sc)
{
 int ret;
 struct ath_hal *ah = sc->sc_ah;
 const char *profname;




 if (! ath_hal_btcoex_supported(ah))
  return (0);





 ret = resource_string_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "btcoex_profile",
     &profname);
 if (ret != 0) {

  return (0);
 }

 if (strncmp(profname, "wb195", 5) == 0) {
  ret = ath_btcoex_cfg_wb195(sc);
 } else if (strncmp(profname, "wb222", 5) == 0) {
  ret = ath_btcoex_cfg_wb222(sc);
 } else if (strncmp(profname, "wb225", 5) == 0) {
  ret = ath_btcoex_cfg_wb225(sc);
 } else if (strncmp(profname, "wb335", 5) == 0) {
  ret = ath_btcoex_cfg_wb335b(sc);
 } else {
  return (0);
 }




 if (ret != 0)
  return (ret);

 return (0);
}
