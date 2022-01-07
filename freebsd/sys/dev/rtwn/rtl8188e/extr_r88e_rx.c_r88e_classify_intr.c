
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r92c_rx_stat {int rxdw3; } ;


 int MS (int ,int ) ;
 int R88E_RXDW3_RPT ;




 int RTWN_RX_DATA ;
 int RTWN_RX_OTHER ;
 int RTWN_RX_TX_REPORT ;
 int le32toh (int ) ;

int
r88e_classify_intr(struct rtwn_softc *sc, void *buf, int len)
{
 struct r92c_rx_stat *stat = buf;
 int report_sel = MS(le32toh(stat->rxdw3), R88E_RXDW3_RPT);

 switch (report_sel) {
 case 130:
  return (RTWN_RX_DATA);
 case 129:
 case 128:
  return (RTWN_RX_TX_REPORT);
 case 131:
  return (RTWN_RX_OTHER);
 default:
  return (RTWN_RX_DATA);
 }
}
