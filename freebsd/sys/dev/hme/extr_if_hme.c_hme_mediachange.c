
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct hme_softc* if_softc; } ;
struct hme_softc {int dummy; } ;


 int HME_LOCK (struct hme_softc*) ;
 int HME_UNLOCK (struct hme_softc*) ;
 int hme_mediachange_locked (struct hme_softc*) ;

__attribute__((used)) static int
hme_mediachange(struct ifnet *ifp)
{
 struct hme_softc *sc = ifp->if_softc;
 int error;

 HME_LOCK(sc);
 error = hme_mediachange_locked(sc);
 HME_UNLOCK(sc);
 return (error);
}
