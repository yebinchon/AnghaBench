
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twed_softc {TYPE_1__* twed_disk; } ;
typedef int device_t ;
struct TYPE_2__ {int d_flags; } ;


 int DISKFLAG_OPEN ;
 int EBUSY ;
 int debug_called (int) ;
 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (TYPE_1__*) ;

__attribute__((used)) static int
twed_detach(device_t dev)
{
    struct twed_softc *sc = (struct twed_softc *)device_get_softc(dev);

    debug_called(4);

    if (sc->twed_disk->d_flags & DISKFLAG_OPEN)
 return(EBUSY);

    disk_destroy(sc->twed_disk);

    return(0);
}
