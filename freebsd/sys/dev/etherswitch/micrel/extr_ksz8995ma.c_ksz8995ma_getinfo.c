
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int info; } ;
typedef int etherswitch_info_t ;
typedef int device_t ;


 struct ksz8995ma_softc* device_get_softc (int ) ;

__attribute__((used)) static etherswitch_info_t *
ksz8995ma_getinfo(device_t dev)
{
 struct ksz8995ma_softc *sc;

 sc = device_get_softc(dev);

 return (&sc->info);
}
