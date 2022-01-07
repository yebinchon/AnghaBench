
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amrd_softc {TYPE_1__* amrd_disk; } ;
typedef int device_t ;
struct TYPE_2__ {int d_flags; } ;


 int DISKFLAG_OPEN ;
 int EBUSY ;
 scalar_t__ amr_disks_registered ;
 int amrddisk_cdevsw ;
 int cdevsw_remove (int *) ;
 int debug_called (int) ;
 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (TYPE_1__*) ;

__attribute__((used)) static int
amrd_detach(device_t dev)
{
    struct amrd_softc *sc = (struct amrd_softc *)device_get_softc(dev);

    debug_called(1);

    if (sc->amrd_disk->d_flags & DISKFLAG_OPEN)
 return(EBUSY);





    disk_destroy(sc->amrd_disk);

    return(0);
}
