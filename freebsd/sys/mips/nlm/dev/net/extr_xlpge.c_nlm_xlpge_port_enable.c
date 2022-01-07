
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {scalar_t__ type; int port; int block; int base_addr; } ;


 scalar_t__ SGMIIC ;
 scalar_t__ XAUIC ;
 int nlm_mac_enable (int ,int ,scalar_t__,int ) ;
 int nlm_mii_pollstat (void*) ;

__attribute__((used)) static void
nlm_xlpge_port_enable(struct nlm_xlpge_softc *sc)
{
 if ((sc->type != SGMIIC) && (sc->type != XAUIC))
  return;
 nlm_mac_enable(sc->base_addr, sc->block, sc->type, sc->port);
 nlm_mii_pollstat((void *)sc);
}
