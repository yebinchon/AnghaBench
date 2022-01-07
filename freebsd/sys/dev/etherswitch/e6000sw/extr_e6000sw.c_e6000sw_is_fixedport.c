
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fixed_mask; } ;
typedef TYPE_1__ e6000sw_softc_t ;



__attribute__((used)) static __inline bool
e6000sw_is_fixedport(e6000sw_softc_t *sc, int port)
{

 return ((sc->fixed_mask & (1 << port)) ? 1 : 0);
}
