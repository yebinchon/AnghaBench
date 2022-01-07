
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rum_softc {int dummy; } ;


 int RT2573_MAC_CSR2 ;
 int RT2573_MAC_CSR3 ;
 int rum_write (struct rum_softc*,int ,int const) ;

__attribute__((used)) static void
rum_set_macaddr(struct rum_softc *sc, const uint8_t *addr)
{

 rum_write(sc, RT2573_MAC_CSR2,
     addr[0] | addr[1] << 8 | addr[2] << 16 | addr[3] << 24);
 rum_write(sc, RT2573_MAC_CSR3,
     addr[4] | addr[5] << 8 | 0xff << 16);
}
