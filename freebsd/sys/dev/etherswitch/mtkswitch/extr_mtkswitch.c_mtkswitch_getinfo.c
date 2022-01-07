
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int info; } ;
typedef int etherswitch_info_t ;
typedef int device_t ;


 struct mtkswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static etherswitch_info_t *
mtkswitch_getinfo(device_t dev)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);

 return (&sc->info);
}
