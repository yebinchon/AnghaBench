
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int nge_flags; } ;
typedef int device_t ;


 int NGE_FLAG_SUSPENDED ;
 int NGE_LOCK (struct nge_softc*) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 struct nge_softc* device_get_softc (int ) ;
 int nge_stop (struct nge_softc*) ;
 int nge_wol (struct nge_softc*) ;

__attribute__((used)) static int
nge_suspend(device_t dev)
{
 struct nge_softc *sc;

 sc = device_get_softc(dev);

 NGE_LOCK(sc);
 nge_stop(sc);
 nge_wol(sc);
 sc->nge_flags |= NGE_FLAG_SUSPENDED;
 NGE_UNLOCK(sc);

 return (0);
}
