
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int dummy; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int VTE_CNT_MECNT0 ;
 int VTE_CNT_MECNT1 ;
 int VTE_CNT_MECNT2 ;
 int VTE_CNT_MECNT3 ;
 int VTE_CNT_MECNT4 ;
 int VTE_CNT_PAUSE ;
 int VTE_CNT_RX_DONE ;
 int VTE_CNT_TX_DONE ;

__attribute__((used)) static void
vte_stats_clear(struct vte_softc *sc)
{


 CSR_READ_2(sc, VTE_CNT_RX_DONE);
 CSR_READ_2(sc, VTE_CNT_MECNT0);
 CSR_READ_2(sc, VTE_CNT_MECNT1);
 CSR_READ_2(sc, VTE_CNT_MECNT2);
 CSR_READ_2(sc, VTE_CNT_MECNT3);
 CSR_READ_2(sc, VTE_CNT_TX_DONE);
 CSR_READ_2(sc, VTE_CNT_MECNT4);
 CSR_READ_2(sc, VTE_CNT_PAUSE);
}
