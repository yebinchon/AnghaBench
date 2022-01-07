
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct arswitch_softc {int numphys; int * miibus; } ;


 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static inline struct mii_data *
arswitch_miiforport(struct arswitch_softc *sc, int port)
{
 int phy = port-1;

 if (phy < 0 || phy >= sc->numphys)
  return (((void*)0));
 return (device_get_softc(sc->miibus[phy]));
}
