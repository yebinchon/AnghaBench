
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mii_data {int dummy; } ;
struct TYPE_4__ {int * miibus; } ;
typedef TYPE_1__ e6000sw_softc_t ;


 struct mii_data* device_get_softc (int ) ;
 int e6000sw_is_phyport (TYPE_1__*,unsigned int) ;

__attribute__((used)) static __inline struct mii_data*
e6000sw_miiforphy(e6000sw_softc_t *sc, unsigned int phy)
{

 if (!e6000sw_is_phyport(sc, phy))
  return (((void*)0));

 return (device_get_softc(sc->miibus[phy]));
}
