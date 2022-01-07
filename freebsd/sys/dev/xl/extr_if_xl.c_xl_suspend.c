
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int dummy; } ;
typedef int device_t ;


 int XL_LOCK (struct xl_softc*) ;
 int XL_UNLOCK (struct xl_softc*) ;
 struct xl_softc* device_get_softc (int ) ;
 int xl_setwol (struct xl_softc*) ;
 int xl_stop (struct xl_softc*) ;

__attribute__((used)) static int
xl_suspend(device_t dev)
{
 struct xl_softc *sc;

 sc = device_get_softc(dev);

 XL_LOCK(sc);
 xl_stop(sc);
 xl_setwol(sc);
 XL_UNLOCK(sc);

 return (0);
}
