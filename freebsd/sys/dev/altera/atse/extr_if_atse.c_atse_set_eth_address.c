
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atse_softc {int* atse_eth_addr; } ;


 int ATSE_ETH_ADDR_DEF ;
 int ATSE_ETH_ADDR_SUPP1 ;
 int ATSE_ETH_ADDR_SUPP2 ;
 int ATSE_ETH_ADDR_SUPP3 ;
 int ATSE_ETH_ADDR_SUPP4 ;
 int BASE_CFG_MAC_0 ;
 int BASE_CFG_MAC_1 ;
 int CSR_WRITE_4 (struct atse_softc*,int ,int) ;
 int SUPPL_ADDR_SMAC_0_0 ;
 int SUPPL_ADDR_SMAC_0_1 ;
 int SUPPL_ADDR_SMAC_1_0 ;
 int SUPPL_ADDR_SMAC_1_1 ;
 int SUPPL_ADDR_SMAC_2_0 ;
 int SUPPL_ADDR_SMAC_2_1 ;
 int SUPPL_ADDR_SMAC_3_0 ;
 int SUPPL_ADDR_SMAC_3_1 ;

__attribute__((used)) static int
atse_set_eth_address(struct atse_softc *sc, int n)
{
 uint32_t v0, v1;

 v0 = (sc->atse_eth_addr[3] << 24) | (sc->atse_eth_addr[2] << 16) |
     (sc->atse_eth_addr[1] << 8) | sc->atse_eth_addr[0];
 v1 = (sc->atse_eth_addr[5] << 8) | sc->atse_eth_addr[4];

 if (n & ATSE_ETH_ADDR_DEF) {
  CSR_WRITE_4(sc, BASE_CFG_MAC_0, v0);
  CSR_WRITE_4(sc, BASE_CFG_MAC_1, v1);
 }
 if (n & ATSE_ETH_ADDR_SUPP1) {
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_0_0, v0);
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_0_1, v1);
 }
 if (n & ATSE_ETH_ADDR_SUPP2) {
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_1_0, v0);
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_1_1, v1);
 }
 if (n & ATSE_ETH_ADDR_SUPP3) {
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_2_0, v0);
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_2_1, v1);
 }
 if (n & ATSE_ETH_ADDR_SUPP4) {
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_3_0, v0);
  CSR_WRITE_4(sc, SUPPL_ADDR_SMAC_3_1, v1);
 }

 return (0);
}
