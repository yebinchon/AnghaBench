
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_ifp; } ;
typedef int if_t ;


 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_RXMODE_RX_KEEP_VLAN_DIAG ;
 int BGE_RX_MODE ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int if_getcapenable (int ) ;

__attribute__((used)) static void
bge_setvlan(struct bge_softc *sc)
{
 if_t ifp;

 BGE_LOCK_ASSERT(sc);

 ifp = sc->bge_ifp;


 if (if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING)
  BGE_CLRBIT(sc, BGE_RX_MODE, BGE_RXMODE_RX_KEEP_VLAN_DIAG);
 else
  BGE_SETBIT(sc, BGE_RX_MODE, BGE_RXMODE_RX_KEEP_VLAN_DIAG);
}
