
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twed_softc {TYPE_1__* twed_controller; } ;
struct disk {scalar_t__ d_drv1; } ;
struct TYPE_2__ {int twe_state; } ;


 int ENXIO ;
 int TWE_STATE_SHUTDOWN ;
 int debug_called (int) ;

__attribute__((used)) static int
twed_open(struct disk *dp)
{
    struct twed_softc *sc = (struct twed_softc *)dp->d_drv1;

    debug_called(4);

    if (sc == ((void*)0))
 return (ENXIO);


    if (sc->twed_controller->twe_state & TWE_STATE_SHUTDOWN)
 return(ENXIO);

    return (0);
}
