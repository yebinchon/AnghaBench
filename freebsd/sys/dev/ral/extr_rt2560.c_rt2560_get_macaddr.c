
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {int dummy; } ;


 int RAL_READ (struct rt2560_softc*,int ) ;
 int RT2560_CSR3 ;
 int RT2560_CSR4 ;

__attribute__((used)) static void
rt2560_get_macaddr(struct rt2560_softc *sc, uint8_t *addr)
{
 uint32_t tmp;

 tmp = RAL_READ(sc, RT2560_CSR3);
 addr[0] = tmp & 0xff;
 addr[1] = (tmp >> 8) & 0xff;
 addr[2] = (tmp >> 16) & 0xff;
 addr[3] = (tmp >> 24);

 tmp = RAL_READ(sc, RT2560_CSR4);
 addr[4] = tmp & 0xff;
 addr[5] = (tmp >> 8) & 0xff;
}
