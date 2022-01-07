
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int fixed_mask; int cpuports_mask; } ;
typedef TYPE_1__ e6000sw_softc_t ;



__attribute__((used)) static __inline bool
e6000sw_is_phyport(e6000sw_softc_t *sc, int port)
{
 uint32_t phy_mask;
 phy_mask = ~(sc->fixed_mask | sc->cpuports_mask);

 return ((phy_mask & (1 << port)) ? 1 : 0);
}
