
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;
struct ether_addr {int * octet; } ;


 int CSR_READ_REG_BYTES (struct mgb_softc*,int ,int *,int) ;
 int MGB_MAC_ADDR_BASE_H ;
 int MGB_MAC_ADDR_BASE_L ;

__attribute__((used)) static void
mgb_get_ethaddr(struct mgb_softc *sc, struct ether_addr *dest)
{

 CSR_READ_REG_BYTES(sc, MGB_MAC_ADDR_BASE_L, &dest->octet[0], 4);
 CSR_READ_REG_BYTES(sc, MGB_MAC_ADDR_BASE_H, &dest->octet[4], 2);
}
