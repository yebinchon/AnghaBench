
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int block; scalar_t__ type; int * dev_addr; scalar_t__ port; int base_addr; } ;


 scalar_t__ SGMIIC ;
 scalar_t__ XAUIC ;
 int nlm_nae_setup_mac_addr_sgmii (int ,int,scalar_t__,scalar_t__,int *) ;
 int nlm_nae_setup_mac_addr_xaui (int ,int,scalar_t__,scalar_t__,int *) ;
 int xlpge_get_macaddr (int *) ;

__attribute__((used)) static void
xlpge_read_mac_addr(struct nlm_xlpge_softc *sc)
{

 xlpge_get_macaddr(sc->dev_addr);

 sc->dev_addr[5] += (sc->block * 4) + sc->port;

 if (sc->type == SGMIIC)
  nlm_nae_setup_mac_addr_sgmii(sc->base_addr, sc->block,
      sc->port, sc->type, sc->dev_addr);
 else if (sc->type == XAUIC)
  nlm_nae_setup_mac_addr_xaui(sc->base_addr, sc->block,
      sc->port, sc->type, sc->dev_addr);
}
