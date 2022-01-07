
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rum_softc {int dummy; } ;


 int RT2573_DISABLE_RX ;
 int RT2573_TXRX_CSR0 ;
 int rum_bbp_read (struct rum_softc*,int) ;
 int rum_bbp_write (struct rum_softc*,int,int ) ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_select_antenna(struct rum_softc *sc)
{
 uint8_t bbp4, bbp77;
 uint32_t tmp;

 bbp4 = rum_bbp_read(sc, 4);
 bbp77 = rum_bbp_read(sc, 77);




 tmp = rum_read(sc, RT2573_TXRX_CSR0);
 rum_write(sc, RT2573_TXRX_CSR0, tmp | RT2573_DISABLE_RX);

 rum_bbp_write(sc, 4, bbp4);
 rum_bbp_write(sc, 77, bbp77);

 rum_write(sc, RT2573_TXRX_CSR0, tmp);
}
