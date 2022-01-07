
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_softc {scalar_t__ reqid; } ;
struct ifnet {struct ipsec_softc* if_softc; } ;


 int CK_LIST_REMOVE (struct ipsec_softc*,int ) ;
 int IPSEC_WAIT () ;
 int M_IPSEC ;
 int bpfdetach (struct ifnet*) ;
 int free (struct ipsec_softc*,int ) ;
 int idhash ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ipsec_delete_tunnel (struct ipsec_softc*) ;
 int ipsec_ioctl_sx ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
ipsec_clone_destroy(struct ifnet *ifp)
{
 struct ipsec_softc *sc;

 sx_xlock(&ipsec_ioctl_sx);
 sc = ifp->if_softc;
 ipsec_delete_tunnel(sc);




 if (sc->reqid != 0)
  CK_LIST_REMOVE(sc, idhash);
 bpfdetach(ifp);
 if_detach(ifp);
 ifp->if_softc = ((void*)0);
 sx_xunlock(&ipsec_ioctl_sx);

 IPSEC_WAIT();
 if_free(ifp);
 free(sc, M_IPSEC);
}
