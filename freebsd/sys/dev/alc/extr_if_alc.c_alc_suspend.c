
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alc_softc {int dummy; } ;
typedef int device_t ;


 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int alc_setwol (struct alc_softc*) ;
 int alc_stop (struct alc_softc*) ;
 struct alc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
alc_suspend(device_t dev)
{
 struct alc_softc *sc;

 sc = device_get_softc(dev);

 ALC_LOCK(sc);
 alc_stop(sc);
 alc_setwol(sc);
 ALC_UNLOCK(sc);

 return (0);
}
