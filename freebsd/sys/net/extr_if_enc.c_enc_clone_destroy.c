
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct enc_softc* if_softc; } ;
struct enc_softc {int dummy; } ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 struct enc_softc* V_enc_sc ;
 int bpfdetach (struct ifnet*) ;
 int free (struct enc_softc*,int ) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;

__attribute__((used)) static void
enc_clone_destroy(struct ifnet *ifp)
{
 struct enc_softc *sc;

 sc = ifp->if_softc;
 KASSERT(sc == V_enc_sc, ("sc != ifp->if_softc"));

 bpfdetach(ifp);
 if_detach(ifp);
 if_free(ifp);
 free(sc, M_DEVBUF);
 V_enc_sc = ((void*)0);
}
