
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r92c_tx_desc {int flags0; int txdw5; int txdw4; int txdw1; } ;


 int R92C_FLAGS0_BMCAST ;
 int R92C_FLAGS0_FSG ;
 int R92C_FLAGS0_LSG ;
 int R92C_RAID_11B ;
 int R92C_TXDW1_QSEL ;
 int R92C_TXDW1_QSEL_BEACON ;
 int R92C_TXDW1_RAID ;
 int R92C_TXDW4_DRVRATE ;
 int R92C_TXDW4_PORT_ID ;
 int R92C_TXDW4_SEQ_SEL ;
 int R92C_TXDW5_DATARATE ;
 int RTWN_RIDX_CCK1 ;
 int SM (int ,int) ;
 int htole32 (int) ;
 int rtwn_r92c_tx_setup_macid (struct rtwn_softc*,void*,int) ;

void
r92c_beacon_init(struct rtwn_softc *sc, void *buf, int id)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;





 txd->flags0 |= R92C_FLAGS0_BMCAST | R92C_FLAGS0_FSG | R92C_FLAGS0_LSG;
 txd->txdw1 |= htole32(
     SM(R92C_TXDW1_QSEL, R92C_TXDW1_QSEL_BEACON) |
     SM(R92C_TXDW1_RAID, R92C_RAID_11B));

 rtwn_r92c_tx_setup_macid(sc, buf, id);
 txd->txdw4 |= htole32(R92C_TXDW4_DRVRATE);
 txd->txdw4 |= htole32(SM(R92C_TXDW4_SEQ_SEL, id));
 txd->txdw4 |= htole32(SM(R92C_TXDW4_PORT_ID, id));
 txd->txdw5 |= htole32(SM(R92C_TXDW5_DATARATE, RTWN_RIDX_CCK1));
}
