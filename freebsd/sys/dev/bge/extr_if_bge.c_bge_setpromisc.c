
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_ifp; } ;
typedef int if_t ;


 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_RXMODE_RX_PROMISC ;
 int BGE_RX_MODE ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int IFF_PROMISC ;
 int if_getflags (int ) ;

__attribute__((used)) static void
bge_setpromisc(struct bge_softc *sc)
{
 if_t ifp;

 BGE_LOCK_ASSERT(sc);

 ifp = sc->bge_ifp;


 if (if_getflags(ifp) & IFF_PROMISC)
  BGE_SETBIT(sc, BGE_RX_MODE, BGE_RXMODE_RX_PROMISC);
 else
  BGE_CLRBIT(sc, BGE_RX_MODE, BGE_RXMODE_RX_PROMISC);
}
