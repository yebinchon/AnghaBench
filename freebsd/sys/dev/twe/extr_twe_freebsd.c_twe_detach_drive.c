
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twe_softc {TYPE_1__* twe_drive; int twe_dev; } ;
struct TYPE_2__ {int td_disk; } ;


 int Giant ;
 int TWE_CONFIG_ASSERT_LOCKED (struct twe_softc*) ;
 int bzero (TYPE_1__*,int) ;
 int device_delete_child (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int twe_printf (struct twe_softc*,char*,int) ;

int
twe_detach_drive(struct twe_softc *sc, int unit)
{
    int error = 0;

    TWE_CONFIG_ASSERT_LOCKED(sc);
    mtx_lock(&Giant);
    error = device_delete_child(sc->twe_dev, sc->twe_drive[unit].td_disk);
    mtx_unlock(&Giant);
    if (error != 0) {
 twe_printf(sc, "failed to delete unit %d\n", unit);
 return(error);
    }
    bzero(&sc->twe_drive[unit], sizeof(sc->twe_drive[unit]));
    return(error);
}
