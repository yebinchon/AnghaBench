
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int dummy; } ;
typedef int device_t ;


 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int bfe_stop (struct bfe_softc*) ;
 struct bfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bfe_shutdown(device_t dev)
{
 struct bfe_softc *sc;

 sc = device_get_softc(dev);
 BFE_LOCK(sc);
 bfe_stop(sc);

 BFE_UNLOCK(sc);

 return (0);
}
