
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int if_flags; scalar_t__ type; int port; int block; int base_addr; } ;


 int IFF_PROMISC ;
 scalar_t__ SGMIIC ;
 int nlm_nae_setup_rx_mode_sgmii (int ,int ,int ,scalar_t__,int,int,int ,int) ;
 int nlm_nae_setup_rx_mode_xaui (int ,int ,int ,scalar_t__,int,int,int ,int) ;

__attribute__((used)) static void
nlm_xlpge_mac_set_rx_mode(struct nlm_xlpge_softc *sc)
{
 if (sc->if_flags & IFF_PROMISC) {
  if (sc->type == SGMIIC)
   nlm_nae_setup_rx_mode_sgmii(sc->base_addr,
       sc->block, sc->port, sc->type, 1 ,
       1 , 0 , 1 );
  else
   nlm_nae_setup_rx_mode_xaui(sc->base_addr,
       sc->block, sc->port, sc->type, 1 ,
       1 , 0 , 1 );
 } else {
  if (sc->type == SGMIIC)
   nlm_nae_setup_rx_mode_sgmii(sc->base_addr,
       sc->block, sc->port, sc->type, 1 ,
       1 , 0 , 0 );
  else
   nlm_nae_setup_rx_mode_xaui(sc->base_addr,
       sc->block, sc->port, sc->type, 1 ,
       1 , 0 , 0 );
 }
}
