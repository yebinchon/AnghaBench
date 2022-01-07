
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int bce_flags; int bus_speed_mhz; } ;


 scalar_t__ BCE_CHIP_ID (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_ID_5706_A0 ;
 scalar_t__ BCE_CHIP_ID_5709_A1 ;
 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5706 ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_DMA_CONFIG ;
 int BCE_DMA_CONFIG_CNTL_BYTE_SWAP ;
 int BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY ;
 int BCE_DMA_CONFIG_CNTL_PING_PONG_DMA ;
 int BCE_DMA_CONFIG_CNTL_WORD_SWAP ;
 int BCE_DMA_CONFIG_DATA_BYTE_SWAP ;
 int BCE_DMA_CONFIG_DATA_WORD_SWAP ;
 int BCE_DMA_CONFIG_PCI_FAST_CLK_CMP ;
 int BCE_MFW_ENABLE_FLAG ;
 int BCE_MISC_ENABLE_SET_BITS ;
 int BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE ;
 int BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE ;
 int BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE ;
 int BCE_MQ_CONFIG ;
 int BCE_MQ_CONFIG_BIN_MQ_MODE ;
 int BCE_MQ_CONFIG_HALT_DIS ;
 int BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE ;
 int BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256 ;
 int BCE_MQ_KNL_BYP_WIND_START ;
 int BCE_MQ_KNL_WIND_END ;
 int BCE_PCIX_FLAG ;
 int BCE_RPM_MGMT_PKT_CTRL ;
 int BCE_RPM_MGMT_PKT_CTRL_MGMT_EN ;
 int BCE_RV2P_CONFIG ;
 int BCE_RXP_PM_CTRL ;
 int BCE_TBDR_CONFIG ;
 int BCE_TBDR_CONFIG_PAGE_SIZE ;
 int BCE_VERBOSE_RESET ;
 int BCM_PAGE_BITS ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DMA_READ_CHANS ;
 int DMA_WRITE_CHANS ;
 int MAX_CID_CNT ;
 int MB_KERNEL_CTX_SIZE ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int) ;
 int REG_WR_IND (struct bce_softc*,int ,int ) ;
 int bce_disable_intr (struct bce_softc*) ;
 int bce_init_cpus (struct bce_softc*) ;
 int bce_init_ctx (struct bce_softc*) ;
 int bce_init_nvram (struct bce_softc*) ;

__attribute__((used)) static int
bce_chipinit(struct bce_softc *sc)
{
 u32 val;
 int rc = 0;

 DBENTER(BCE_VERBOSE_RESET);

 bce_disable_intr(sc);





 val = BCE_DMA_CONFIG_DATA_BYTE_SWAP |
     BCE_DMA_CONFIG_DATA_WORD_SWAP |

     BCE_DMA_CONFIG_CNTL_BYTE_SWAP |

     BCE_DMA_CONFIG_CNTL_WORD_SWAP |
     DMA_READ_CHANS << 12 |
     DMA_WRITE_CHANS << 16;

 val |= (0x2 << 20) | BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY;

 if ((sc->bce_flags & BCE_PCIX_FLAG) && (sc->bus_speed_mhz == 133))
  val |= BCE_DMA_CONFIG_PCI_FAST_CLK_CMP;






 if ((BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5706) &&
     (BCE_CHIP_ID(sc) != BCE_CHIP_ID_5706_A0) &&
     !(sc->bce_flags & BCE_PCIX_FLAG))
  val |= BCE_DMA_CONFIG_CNTL_PING_PONG_DMA;

 REG_WR(sc, BCE_DMA_CONFIG, val);


 REG_WR(sc, BCE_MISC_ENABLE_SET_BITS,
     BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE |
     BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE |
     BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE);


 if ((rc = bce_init_ctx(sc)) != 0)
  goto bce_chipinit_exit;


 bce_init_cpus(sc);


 if (sc->bce_flags & BCE_MFW_ENABLE_FLAG) {
  val = REG_RD(sc, BCE_RPM_MGMT_PKT_CTRL) | BCE_RPM_MGMT_PKT_CTRL_MGMT_EN;
  REG_WR(sc, BCE_RPM_MGMT_PKT_CTRL, val);
 }


 if ((rc = bce_init_nvram(sc)) != 0)
  goto bce_chipinit_exit;


 val = REG_RD(sc, BCE_MQ_CONFIG);
 val &= ~BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE;
 val |= BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256;


 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
  val |= BCE_MQ_CONFIG_BIN_MQ_MODE;
  if (BCE_CHIP_ID(sc) == BCE_CHIP_ID_5709_A1)
   val |= BCE_MQ_CONFIG_HALT_DIS;
 }

 REG_WR(sc, BCE_MQ_CONFIG, val);

 val = 0x10000 + (MAX_CID_CNT * MB_KERNEL_CTX_SIZE);
 REG_WR(sc, BCE_MQ_KNL_BYP_WIND_START, val);
 REG_WR(sc, BCE_MQ_KNL_WIND_END, val);


 val = (BCM_PAGE_BITS - 8) << 24;
 REG_WR(sc, BCE_RV2P_CONFIG, val);


 val = REG_RD(sc, BCE_TBDR_CONFIG);
 val &= ~BCE_TBDR_CONFIG_PAGE_SIZE;
 val |= (BCM_PAGE_BITS - 8) << 24 | 0x40;
 REG_WR(sc, BCE_TBDR_CONFIG, val);


 REG_WR_IND(sc, BCE_RXP_PM_CTRL, 0);

bce_chipinit_exit:
 DBEXIT(BCE_VERBOSE_RESET);

 return(rc);
}
