
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int dummy; } ;
typedef int device_t ;


 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int bwn_stop (struct bwn_softc*) ;
 struct bwn_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bwn_suspend(device_t dev)
{
 struct bwn_softc *sc = device_get_softc(dev);

 BWN_LOCK(sc);
 bwn_stop(sc);
 BWN_UNLOCK(sc);
 return (0);
}
