
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int dummy; } ;
typedef int device_t ;


 int BGE_LOCK (struct bge_softc*) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int bge_stop (struct bge_softc*) ;
 struct bge_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bge_shutdown(device_t dev)
{
 struct bge_softc *sc;

 sc = device_get_softc(dev);
 BGE_LOCK(sc);
 bge_stop(sc);
 BGE_UNLOCK(sc);

 return (0);
}
