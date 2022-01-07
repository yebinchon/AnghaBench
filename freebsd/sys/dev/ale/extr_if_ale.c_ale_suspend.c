
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ale_softc {int dummy; } ;
typedef int device_t ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int ale_setwol (struct ale_softc*) ;
 int ale_stop (struct ale_softc*) ;
 struct ale_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ale_suspend(device_t dev)
{
 struct ale_softc *sc;

 sc = device_get_softc(dev);

 ALE_LOCK(sc);
 ale_stop(sc);
 ale_setwol(sc);
 ALE_UNLOCK(sc);

 return (0);
}
