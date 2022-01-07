
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct alc_softc* if_softc; } ;
struct alc_softc {int dummy; } ;


 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int alc_mediachange_locked (struct alc_softc*) ;

__attribute__((used)) static int
alc_mediachange(struct ifnet *ifp)
{
 struct alc_softc *sc;
 int error;

 sc = ifp->if_softc;
 ALC_LOCK(sc);
 error = alc_mediachange_locked(sc);
 ALC_UNLOCK(sc);

 return (error);
}
