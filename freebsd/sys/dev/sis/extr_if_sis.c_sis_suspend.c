
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int dummy; } ;
typedef int device_t ;


 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 struct sis_softc* device_get_softc (int ) ;
 int sis_stop (struct sis_softc*) ;
 int sis_wol (struct sis_softc*) ;

__attribute__((used)) static int
sis_suspend(device_t dev)
{
 struct sis_softc *sc;

 sc = device_get_softc(dev);
 SIS_LOCK(sc);
 sis_stop(sc);
 sis_wol(sc);
 SIS_UNLOCK(sc);
 return (0);
}
