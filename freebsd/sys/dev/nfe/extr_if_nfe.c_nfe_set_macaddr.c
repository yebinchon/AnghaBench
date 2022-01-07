
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nfe_softc {int dummy; } ;


 int NFE_MACADDR_HI ;
 int NFE_MACADDR_LO ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;

__attribute__((used)) static void
nfe_set_macaddr(struct nfe_softc *sc, uint8_t *addr)
{

 NFE_WRITE(sc, NFE_MACADDR_LO, addr[5] << 8 | addr[4]);
 NFE_WRITE(sc, NFE_MACADDR_HI, addr[3] << 24 | addr[2] << 16 |
     addr[1] << 8 | addr[0]);
}
