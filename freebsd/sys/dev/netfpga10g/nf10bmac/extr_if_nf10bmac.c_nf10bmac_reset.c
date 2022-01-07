
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int* nf10bmac_eth_addr; scalar_t__ nf10bmac_unit; } ;


 int ETHER_ADDR_LEN ;
 int memcpy (int**,char*,int ) ;

__attribute__((used)) static int
nf10bmac_reset(struct nf10bmac_softc *sc)
{
 if (sc->nf10bmac_eth_addr[0] == 0x00 &&
     sc->nf10bmac_eth_addr[1] == 0x00 &&
     sc->nf10bmac_eth_addr[2] == 0x00 &&
     sc->nf10bmac_eth_addr[3] == 0x00 &&
     sc->nf10bmac_eth_addr[4] == 0x00 &&
     sc->nf10bmac_eth_addr[5] == 0x00) {
  memcpy(&sc->nf10bmac_eth_addr, "\0NFBSD", ETHER_ADDR_LEN);
  sc->nf10bmac_eth_addr[5] += sc->nf10bmac_unit;
 }

 return (0);
}
