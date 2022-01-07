
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk {scalar_t__ d_drv1; } ;
struct amrd_softc {TYPE_1__* amrd_controller; } ;
struct TYPE_2__ {int amr_state; } ;


 int AMR_STATE_SHUTDOWN ;
 int ENXIO ;
 int debug_called (int) ;

__attribute__((used)) static int
amrd_open(struct disk *dp)
{
    struct amrd_softc *sc = (struct amrd_softc *)dp->d_drv1;

    debug_called(1);

    if (sc == ((void*)0))
 return (ENXIO);


    if (sc->amrd_controller->amr_state & AMR_STATE_SHUTDOWN)
 return(ENXIO);

    return (0);
}
