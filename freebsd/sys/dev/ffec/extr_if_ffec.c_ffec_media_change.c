
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct ffec_softc* if_softc; } ;
struct ffec_softc {int dummy; } ;


 int FFEC_LOCK (struct ffec_softc*) ;
 int FFEC_UNLOCK (struct ffec_softc*) ;
 int ffec_media_change_locked (struct ffec_softc*) ;

__attribute__((used)) static int
ffec_media_change(struct ifnet * ifp)
{
 struct ffec_softc *sc;
 int error;

 sc = ifp->if_softc;

 FFEC_LOCK(sc);
 error = ffec_media_change_locked(sc);
 FFEC_UNLOCK(sc);
 return (error);
}
