
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int dummy; } ;


 int RT2573_TSF_SYNC_MODE (int ) ;
 int RT2573_TSF_SYNC_MODE_DIS ;
 int RT2573_TSF_TIMER_EN ;
 int RT2573_TXRX_CSR9 ;
 int rum_modbits (struct rum_softc*,int ,int,int) ;

__attribute__((used)) static void
rum_enable_tsf(struct rum_softc *sc)
{
 rum_modbits(sc, RT2573_TXRX_CSR9, RT2573_TSF_TIMER_EN |
     RT2573_TSF_SYNC_MODE(RT2573_TSF_SYNC_MODE_DIS), 0x00ffffff);
}
