
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int dummy; } ;
struct ifnet {struct xae_softc* if_softc; } ;



__attribute__((used)) static void
xae_qflush(struct ifnet *ifp)
{
 struct xae_softc *sc;

 sc = ifp->if_softc;
}
