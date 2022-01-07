
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxd_softc {int mlxd_disk; } ;
typedef int device_t ;


 int debug_called (int) ;
 scalar_t__ device_get_softc (int ) ;
 int disk_destroy (int ) ;

__attribute__((used)) static int
mlxd_detach(device_t dev)
{
    struct mlxd_softc *sc = (struct mlxd_softc *)device_get_softc(dev);

    debug_called(1);

    disk_destroy(sc->mlxd_disk);

    return(0);
}
