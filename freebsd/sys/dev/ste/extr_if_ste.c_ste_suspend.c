
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int dummy; } ;
typedef int device_t ;


 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 struct ste_softc* device_get_softc (int ) ;
 int ste_setwol (struct ste_softc*) ;
 int ste_stop (struct ste_softc*) ;

__attribute__((used)) static int
ste_suspend(device_t dev)
{
 struct ste_softc *sc;

 sc = device_get_softc(dev);

 STE_LOCK(sc);
 ste_stop(sc);
 ste_setwol(sc);
 STE_UNLOCK(sc);

 return (0);
}
