
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2860_softc {int dummy; } ;


 int RAL_WRITE (struct rt2860_softc*,int ,int const) ;
 int RT2860_MAC_ADDR_DW0 ;
 int RT2860_MAC_ADDR_DW1 ;

__attribute__((used)) static void
rt2860_set_macaddr(struct rt2860_softc *sc, const uint8_t *addr)
{
 RAL_WRITE(sc, RT2860_MAC_ADDR_DW0,
     addr[0] | addr[1] << 8 | addr[2] << 16 | addr[3] << 24);
 RAL_WRITE(sc, RT2860_MAC_ADDR_DW1,
     addr[4] | addr[5] << 8 | 0xff << 16);
}
