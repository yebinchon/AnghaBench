
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;


 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_TSF_MODE (int) ;
 int RT2661_TSF_TICKING ;
 int RT2661_TXRX_CSR9 ;

__attribute__((used)) static void
rt2661_enable_tsf(struct rt2661_softc *sc)
{
 RAL_WRITE(sc, RT2661_TXRX_CSR9,
       (RAL_READ(sc, RT2661_TXRX_CSR9) & 0xff000000)
     | RT2661_TSF_TICKING | RT2661_TSF_MODE(2));
}
