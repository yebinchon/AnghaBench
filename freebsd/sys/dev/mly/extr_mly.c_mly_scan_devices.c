
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mly_softc {int mly_cam_channels; TYPE_1__** mly_btl; } ;
struct TYPE_2__ {int mb_flags; } ;


 int MLY_BTL_RESCAN ;
 scalar_t__ MLY_BUS_IS_VALID (struct mly_softc*,int) ;
 int MLY_MAX_TARGETS ;
 int bzero (TYPE_1__***,int) ;
 int debug_called (int) ;

__attribute__((used)) static void
mly_scan_devices(struct mly_softc *sc)
{
    int bus, target;

    debug_called(1);




    bzero(&sc->mly_btl, sizeof(sc->mly_btl));





    for (bus = 0; bus < sc->mly_cam_channels; bus++)
 if (MLY_BUS_IS_VALID(sc, bus))
     for (target = 0; target < MLY_MAX_TARGETS; target++)
  sc->mly_btl[bus][target].mb_flags = MLY_BTL_RESCAN;

}
