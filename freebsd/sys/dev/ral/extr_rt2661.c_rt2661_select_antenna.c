
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2661_softc {int dummy; } ;


 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_DISABLE_RX ;
 int RT2661_TXRX_CSR0 ;
 int rt2661_bbp_read (struct rt2661_softc*,int) ;
 int rt2661_bbp_write (struct rt2661_softc*,int,int ) ;

__attribute__((used)) static void
rt2661_select_antenna(struct rt2661_softc *sc)
{
 uint8_t bbp4, bbp77;
 uint32_t tmp;

 bbp4 = rt2661_bbp_read(sc, 4);
 bbp77 = rt2661_bbp_read(sc, 77);




 tmp = RAL_READ(sc, RT2661_TXRX_CSR0);
 RAL_WRITE(sc, RT2661_TXRX_CSR0, tmp | RT2661_DISABLE_RX);

 rt2661_bbp_write(sc, 4, bbp4);
 rt2661_bbp_write(sc, 77, bbp77);


 RAL_WRITE(sc, RT2661_TXRX_CSR0, tmp);
}
