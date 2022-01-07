
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct age_softc {int dummy; } ;
typedef int device_t ;


 int AGE_LOCK (struct age_softc*) ;
 int AGE_UNLOCK (struct age_softc*) ;
 int age_setwol (struct age_softc*) ;
 int age_stop (struct age_softc*) ;
 struct age_softc* device_get_softc (int ) ;

__attribute__((used)) static int
age_suspend(device_t dev)
{
 struct age_softc *sc;

 sc = device_get_softc(dev);

 AGE_LOCK(sc);
 age_stop(sc);
 age_setwol(sc);
 AGE_UNLOCK(sc);

 return (0);
}
