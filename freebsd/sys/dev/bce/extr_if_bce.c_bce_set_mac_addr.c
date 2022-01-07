
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bce_softc {int* eaddr; } ;


 int BCE_EMAC_MAC_MATCH0 ;
 int BCE_EMAC_MAC_MATCH1 ;
 int BCE_INFO_MISC ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*,int*,char*) ;
 int REG_WR (struct bce_softc*,int ,int) ;

__attribute__((used)) static void
bce_set_mac_addr(struct bce_softc *sc)
{
 u32 val;
 u8 *mac_addr = sc->eaddr;



 DBENTER(BCE_VERBOSE_RESET);
 DBPRINT(sc, BCE_INFO_MISC, "Setting Ethernet address = "
     "%6D\n", sc->eaddr, ":");

 val = (mac_addr[0] << 8) | mac_addr[1];

 REG_WR(sc, BCE_EMAC_MAC_MATCH0, val);

 val = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
     (mac_addr[4] << 8) | mac_addr[5];

 REG_WR(sc, BCE_EMAC_MAC_MATCH1, val);

 DBEXIT(BCE_VERBOSE_RESET);
}
