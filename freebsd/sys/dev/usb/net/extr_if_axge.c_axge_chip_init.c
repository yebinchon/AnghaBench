
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axge_softc {int sc_ue; } ;


 int AXGE_ACCESS_MAC ;
 int AXGE_CLK_SELECT ;
 int AXGE_CLK_SELECT_ACS ;
 int AXGE_CLK_SELECT_BCS ;
 int AXGE_EPPRCR ;
 int EPPRCR_IPRL ;
 int axge_write_cmd_1 (struct axge_softc*,int ,int ,int) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int ) ;
 int hz ;
 int uether_pause (int *,int) ;

__attribute__((used)) static void
axge_chip_init(struct axge_softc *sc)
{

 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, 0);
 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, EPPRCR_IPRL);
 uether_pause(&sc->sc_ue, hz / 4);
 axge_write_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_CLK_SELECT,
     AXGE_CLK_SELECT_ACS | AXGE_CLK_SELECT_BCS);
 uether_pause(&sc->sc_ue, hz / 10);
}
