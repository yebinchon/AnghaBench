
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {scalar_t__ type; scalar_t__ mii_bus; } ;
struct mii_data {int dummy; } ;


 scalar_t__ ILC ;
 scalar_t__ XAUIC ;
 struct mii_data* device_get_softc (scalar_t__) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static int
nlm_xlpge_gmac_config_speed(struct nlm_xlpge_softc *sc)
{
 struct mii_data *mii;

 if (sc->type == XAUIC || sc->type == ILC)
  return (0);

 if (sc->mii_bus) {
  mii = device_get_softc(sc->mii_bus);
  mii_pollstat(mii);
 }

 return (0);
}
