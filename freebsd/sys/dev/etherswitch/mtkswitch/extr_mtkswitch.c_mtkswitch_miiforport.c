
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int ** miibus; } ;
struct mii_data {int dummy; } ;


 int MTKSWITCH_MAX_PHYS ;
 struct mii_data* device_get_softc (int *) ;
 int mtkswitch_phyforport (int) ;

__attribute__((used)) static inline struct mii_data *
mtkswitch_miiforport(struct mtkswitch_softc *sc, int port)
{
 int phy = mtkswitch_phyforport(port);

 if (phy < 0 || phy >= MTKSWITCH_MAX_PHYS || sc->miibus[phy] == ((void*)0))
  return (((void*)0));

 return (device_get_softc(sc->miibus[phy]));
}
