
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_UPDATE_REG (struct mgb_softc*,int ,int) ;
 int MGB_MAC_ADD_ENBL ;
 int MGB_MAC_ASD_ENBL ;
 int MGB_MAC_CR ;
 int MGB_MAC_ENBL ;
 int MGB_MAC_RX ;
 int MGB_MAC_TX ;
 int MGB_STS_OK ;

__attribute__((used)) static int
mgb_mac_init(struct mgb_softc *sc)
{





 CSR_UPDATE_REG(sc, MGB_MAC_CR, MGB_MAC_ADD_ENBL | MGB_MAC_ASD_ENBL);
 CSR_UPDATE_REG(sc, MGB_MAC_TX, MGB_MAC_ENBL);
 CSR_UPDATE_REG(sc, MGB_MAC_RX, MGB_MAC_ENBL);

 return MGB_STS_OK;
}
