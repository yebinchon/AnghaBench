
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_PHY_CTRL ;
 int BWI_PHY_DATA ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int ) ;

uint16_t
bwi_phy_read(struct bwi_mac *mac, uint16_t ctrl)
{
 struct bwi_softc *sc = mac->mac_sc;

 CSR_WRITE_2(sc, BWI_PHY_CTRL, ctrl);
 return CSR_READ_2(sc, BWI_PHY_DATA);
}
