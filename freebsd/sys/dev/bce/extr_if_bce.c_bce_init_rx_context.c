
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int bce_flags; int * rx_bd_chain_paddr; } ;


 int BCE_ADDR_HI (int ) ;
 int BCE_ADDR_LO (int ) ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_L2CTX_RX_BD_PRE_READ_SHIFT ;
 int BCE_L2CTX_RX_CTX_TYPE ;
 int BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE ;
 int BCE_L2CTX_RX_CTX_TYPE_SIZE_L2 ;
 int BCE_L2CTX_RX_HI_WATER_MARK_SCALE ;
 int BCE_L2CTX_RX_HI_WATER_MARK_SHIFT ;
 int BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT ;
 int BCE_L2CTX_RX_LO_WATER_MARK_SCALE ;
 int BCE_L2CTX_RX_LO_WATER_MARK_SHIFT ;
 int BCE_L2CTX_RX_NX_BDHADDR_HI ;
 int BCE_L2CTX_RX_NX_BDHADDR_LO ;
 int BCE_MQ_MAP_L2_5 ;
 int BCE_MQ_MAP_L2_5_ARM ;
 int BCE_USING_TX_FLOW_CONTROL ;
 int BCE_VERBOSE_CTX ;
 int BCE_VERBOSE_RECV ;
 int BCE_VERBOSE_RESET ;
 int CTX_WR (struct bce_softc*,int ,int ,int) ;
 int DBENTER (int) ;
 int DBEXIT (int) ;
 int GET_CID_ADDR (int ) ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int) ;
 int RX_CID ;
 int USABLE_RX_BD_ALLOC ;

__attribute__((used)) static void
bce_init_rx_context(struct bce_softc *sc)
{
 u32 val;

 DBENTER(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_CTX);


 val = BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE |
     BCE_L2CTX_RX_CTX_TYPE_SIZE_L2 |
     (0x02 << BCE_L2CTX_RX_BD_PRE_READ_SHIFT);
 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
  u32 lo_water, hi_water;

  if (sc->bce_flags & BCE_USING_TX_FLOW_CONTROL) {
   lo_water = BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT;
  } else {
   lo_water = 0;
  }

  if (lo_water >= USABLE_RX_BD_ALLOC) {
   lo_water = 0;
  }

  hi_water = USABLE_RX_BD_ALLOC / 4;

  if (hi_water <= lo_water) {
   lo_water = 0;
  }

  lo_water /= BCE_L2CTX_RX_LO_WATER_MARK_SCALE;
  hi_water /= BCE_L2CTX_RX_HI_WATER_MARK_SCALE;

  if (hi_water > 0xf)
   hi_water = 0xf;
  else if (hi_water == 0)
   lo_water = 0;

  val |= (lo_water << BCE_L2CTX_RX_LO_WATER_MARK_SHIFT) |
      (hi_water << BCE_L2CTX_RX_HI_WATER_MARK_SHIFT);
 }

 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_CTX_TYPE, val);


 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
  val = REG_RD(sc, BCE_MQ_MAP_L2_5);
  REG_WR(sc, BCE_MQ_MAP_L2_5, val | BCE_MQ_MAP_L2_5_ARM);
 }


 val = BCE_ADDR_HI(sc->rx_bd_chain_paddr[0]);
 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_NX_BDHADDR_HI, val);
 val = BCE_ADDR_LO(sc->rx_bd_chain_paddr[0]);
 CTX_WR(sc, GET_CID_ADDR(RX_CID), BCE_L2CTX_RX_NX_BDHADDR_LO, val);

 DBEXIT(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_CTX);
}
