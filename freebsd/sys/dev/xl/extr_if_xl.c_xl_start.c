
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {scalar_t__ xl_type; } ;
struct ifnet {struct xl_softc* if_softc; } ;


 int XL_LOCK (struct xl_softc*) ;
 scalar_t__ XL_TYPE_905B ;
 int XL_UNLOCK (struct xl_softc*) ;
 int xl_start_90xB_locked (struct ifnet*) ;
 int xl_start_locked (struct ifnet*) ;

__attribute__((used)) static void
xl_start(struct ifnet *ifp)
{
 struct xl_softc *sc = ifp->if_softc;

 XL_LOCK(sc);

 if (sc->xl_type == XL_TYPE_905B)
  xl_start_90xB_locked(ifp);
 else
  xl_start_locked(ifp);

 XL_UNLOCK(sc);
}
