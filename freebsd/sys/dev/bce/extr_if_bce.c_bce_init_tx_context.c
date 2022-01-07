
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int * tx_bd_chain_paddr; } ;


 int BCE_ADDR_HI (int ) ;
 int BCE_ADDR_LO (int ) ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_L2CTX_TX_CMD_TYPE ;
 int BCE_L2CTX_TX_CMD_TYPE_TYPE_L2 ;
 int BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI ;
 int BCE_L2CTX_TX_CMD_TYPE_XI ;
 int BCE_L2CTX_TX_TBDR_BHADDR_HI ;
 int BCE_L2CTX_TX_TBDR_BHADDR_HI_XI ;
 int BCE_L2CTX_TX_TBDR_BHADDR_LO ;
 int BCE_L2CTX_TX_TBDR_BHADDR_LO_XI ;
 int BCE_L2CTX_TX_TYPE ;
 int BCE_L2CTX_TX_TYPE_SIZE_L2 ;
 int BCE_L2CTX_TX_TYPE_SIZE_L2_XI ;
 int BCE_L2CTX_TX_TYPE_TYPE_L2 ;
 int BCE_L2CTX_TX_TYPE_TYPE_L2_XI ;
 int BCE_L2CTX_TX_TYPE_XI ;
 int BCE_VERBOSE_CTX ;
 int BCE_VERBOSE_RESET ;
 int BCE_VERBOSE_SEND ;
 int CTX_WR (struct bce_softc*,int ,int ,int) ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int GET_CID_ADDR (int ) ;
 int TX_CID ;

__attribute__((used)) static void
bce_init_tx_context(struct bce_softc *sc)
{
 u32 val;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_CTX);


 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {

  val = BCE_L2CTX_TX_TYPE_TYPE_L2_XI |
      BCE_L2CTX_TX_TYPE_SIZE_L2_XI;
  CTX_WR(sc, GET_CID_ADDR(TX_CID), BCE_L2CTX_TX_TYPE_XI, val);
  val = BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI | (8 << 16);
  CTX_WR(sc, GET_CID_ADDR(TX_CID),
      BCE_L2CTX_TX_CMD_TYPE_XI, val);


  val = BCE_ADDR_HI(sc->tx_bd_chain_paddr[0]);
  CTX_WR(sc, GET_CID_ADDR(TX_CID),
      BCE_L2CTX_TX_TBDR_BHADDR_HI_XI, val);
  val = BCE_ADDR_LO(sc->tx_bd_chain_paddr[0]);
  CTX_WR(sc, GET_CID_ADDR(TX_CID),
      BCE_L2CTX_TX_TBDR_BHADDR_LO_XI, val);
 } else {

  val = BCE_L2CTX_TX_TYPE_TYPE_L2 | BCE_L2CTX_TX_TYPE_SIZE_L2;
  CTX_WR(sc, GET_CID_ADDR(TX_CID), BCE_L2CTX_TX_TYPE, val);
  val = BCE_L2CTX_TX_CMD_TYPE_TYPE_L2 | (8 << 16);
  CTX_WR(sc, GET_CID_ADDR(TX_CID), BCE_L2CTX_TX_CMD_TYPE, val);


  val = BCE_ADDR_HI(sc->tx_bd_chain_paddr[0]);
  CTX_WR(sc, GET_CID_ADDR(TX_CID),
      BCE_L2CTX_TX_TBDR_BHADDR_HI, val);
  val = BCE_ADDR_LO(sc->tx_bd_chain_paddr[0]);
  CTX_WR(sc, GET_CID_ADDR(TX_CID),
      BCE_L2CTX_TX_TBDR_BHADDR_LO, val);
 }

 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_CTX);
}
