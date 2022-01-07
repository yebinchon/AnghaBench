
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ue_udev; int ue_dev; int ue_eaddr; } ;
struct muge_softc {int chipid; int chiprev; int sc_flags; TYPE_1__ sc_ue; } ;


 int ETHER_MAX_LEN ;
 int ETH_BULK_IN_DLY ;
 int ETH_BURST_CAP ;
 int ETH_FCT_FLOW ;
 int ETH_FCT_RX_CTL ;
 int ETH_FCT_RX_FIFO_END ;
 int ETH_FCT_TX_CTL ;
 int ETH_FCT_TX_CTL_EN_ ;
 int ETH_FCT_TX_FIFO_END ;
 int ETH_FLOW ;
 int ETH_HW_CFG ;
 int ETH_HW_CFG_LRST_ ;
 int ETH_HW_CFG_MEF_ ;
 int ETH_ID_REV ;


 int ETH_ID_REV_CHIP_ID_MASK_ ;
 int ETH_ID_REV_CHIP_REV_MASK_ ;
 int ETH_INT_ENP_PHY_INT ;
 int ETH_INT_EP_CTL ;
 int ETH_INT_STS ;
 int ETH_INT_STS_CLEAR_ALL_ ;
 int ETH_MAC_CR ;
 int ETH_MAC_CR_AUTO_DUPLEX_ ;
 int ETH_MAC_CR_AUTO_SPEED_ ;
 int ETH_MAC_RX ;
 int ETH_MAC_RX_EN_ ;
 int ETH_MAC_TX ;
 int ETH_MAC_TX_TXEN_ ;
 int ETH_PMT_CTL ;
 int ETH_PMT_CTL_PHY_RST_ ;
 int ETH_RFE_CTL ;
 int ETH_RFE_CTL_BCAST_EN_ ;
 int ETH_RFE_CTL_DA_PERFECT_ ;
 int ETH_USB_CFG0 ;
 int ETH_USB_CFG_BCE_ ;
 int ETH_USB_CFG_BIR_ ;
 int MA_OWNED ;
 int MUGE_DEFAULT_BULK_IN_DELAY ;
 int MUGE_DEFAULT_BURST_CAP_SIZE ;
 int MUGE_FLAG_INIT_DONE ;
 int MUGE_FS_USB_PKT_SIZE ;
 int MUGE_HS_USB_PKT_SIZE ;
 int MUGE_LOCK_ASSERT (struct muge_softc*,int ) ;
 int MUGE_MAX_RX_FIFO_SIZE ;
 int MUGE_MAX_TX_FIFO_SIZE ;
 int MUGE_SS_USB_PKT_SIZE ;


 int device_printf (int ,char*,int,int) ;
 int lan78xx_eeprom_present (struct muge_softc*) ;
 int lan78xx_phy_init (struct muge_softc*) ;
 int lan78xx_read_reg (struct muge_softc*,int ,int*) ;
 int lan78xx_set_rx_max_frame_length (struct muge_softc*,int ) ;
 int lan78xx_setmacaddress (struct muge_softc*,int ) ;
 int lan78xx_wait_for_bits (struct muge_softc*,int ,int) ;
 int lan78xx_write_reg (struct muge_softc*,int ,int) ;
 int muge_err_printf (struct muge_softc*,char*,int) ;
 int muge_warn_printf (struct muge_softc*,char*,...) ;
 int usbd_get_speed (int ) ;

__attribute__((used)) static int
lan78xx_chip_init(struct muge_softc *sc)
{
 int err;
 uint32_t buf;
 uint32_t burst_cap;

 MUGE_LOCK_ASSERT(sc, MA_OWNED);


 lan78xx_write_reg(sc, ETH_HW_CFG, ETH_HW_CFG_LRST_);

 if ((err = lan78xx_wait_for_bits(sc, ETH_HW_CFG, ETH_HW_CFG_LRST_)) !=
     0) {
  muge_warn_printf(sc,
      "timed-out waiting for lite reset to complete\n");
  goto init_failed;
 }


 if ((err = lan78xx_setmacaddress(sc, sc->sc_ue.ue_eaddr)) != 0) {
  muge_warn_printf(sc, "failed to set the MAC address\n");
  goto init_failed;
 }


 if ((err = lan78xx_read_reg(sc, ETH_ID_REV, &buf)) < 0) {
  muge_warn_printf(sc, "failed to read ETH_ID_REV (err = %d)\n",
      err);
  goto init_failed;
 }
 sc->chipid = (buf & ETH_ID_REV_CHIP_ID_MASK_) >> 16;
 sc->chiprev = buf & ETH_ID_REV_CHIP_REV_MASK_;
 switch (sc->chipid) {
 case 131:
 case 130:
  break;
 default:
  muge_warn_printf(sc, "Chip ID 0x%04x not yet supported\n",
      sc->chipid);
  goto init_failed;
 }
 device_printf(sc->sc_ue.ue_dev, "Chip ID 0x%04x rev %04x\n", sc->chipid,
     sc->chiprev);


 if ((err = lan78xx_read_reg(sc, ETH_USB_CFG0, &buf)) != 0) {
  muge_warn_printf(sc, "failed to read ETH_USB_CFG0 (err=%d)\n", err);
  goto init_failed;
 }
 buf |= ETH_USB_CFG_BIR_;
 lan78xx_write_reg(sc, ETH_USB_CFG0, buf);






 switch (usbd_get_speed(sc->sc_ue.ue_udev)) {
 case 128:
  burst_cap = MUGE_DEFAULT_BURST_CAP_SIZE/MUGE_SS_USB_PKT_SIZE;
  break;
 case 129:
  burst_cap = MUGE_DEFAULT_BURST_CAP_SIZE/MUGE_HS_USB_PKT_SIZE;
  break;
 default:
  burst_cap = MUGE_DEFAULT_BURST_CAP_SIZE/MUGE_FS_USB_PKT_SIZE;
 }

 lan78xx_write_reg(sc, ETH_BURST_CAP, burst_cap);


 lan78xx_write_reg(sc, ETH_BULK_IN_DLY, MUGE_DEFAULT_BULK_IN_DELAY);


 err = lan78xx_read_reg(sc, ETH_HW_CFG, &buf);
 buf |= ETH_HW_CFG_MEF_;
 err = lan78xx_write_reg(sc, ETH_HW_CFG, buf);


 if ((err = lan78xx_read_reg(sc, ETH_USB_CFG0, &buf)) < 0) {
  muge_warn_printf(sc, "failed to read ETH_USB_CFG0 (err=%d)\n",
      err);
  goto init_failed;
 }
 buf |= ETH_USB_CFG_BCE_;
 err = lan78xx_write_reg(sc, ETH_USB_CFG0, buf);







 buf = (MUGE_MAX_RX_FIFO_SIZE - 512) / 512;
 err = lan78xx_write_reg(sc, ETH_FCT_RX_FIFO_END, buf);

 buf = (MUGE_MAX_TX_FIFO_SIZE - 512) / 512;
 err = lan78xx_write_reg(sc, ETH_FCT_TX_FIFO_END, buf);


 err = lan78xx_write_reg(sc, ETH_INT_STS, ETH_INT_STS_CLEAR_ALL_);





 err = lan78xx_write_reg(sc, ETH_FLOW, 0);
 err = lan78xx_write_reg(sc, ETH_FCT_FLOW, 0);





 err = lan78xx_read_reg(sc, ETH_RFE_CTL, &buf);
 buf |= ETH_RFE_CTL_BCAST_EN_ | ETH_RFE_CTL_DA_PERFECT_;
 err = lan78xx_write_reg(sc, ETH_RFE_CTL, buf);
 lan78xx_write_reg(sc, ETH_PMT_CTL, ETH_PMT_CTL_PHY_RST_);
 if ((err = lan78xx_wait_for_bits(sc, ETH_PMT_CTL,
     ETH_PMT_CTL_PHY_RST_)) != 0) {
  muge_warn_printf(sc,
      "timed-out waiting for phy reset to complete\n");
  goto init_failed;
 }

 err = lan78xx_read_reg(sc, ETH_MAC_CR, &buf);
 if (sc->chipid == 131 &&
     !lan78xx_eeprom_present(sc)) {

  buf |= ETH_MAC_CR_AUTO_DUPLEX_ | ETH_MAC_CR_AUTO_SPEED_;
 }
 err = lan78xx_write_reg(sc, ETH_MAC_CR, buf);






 err = lan78xx_read_reg(sc, ETH_INT_EP_CTL, &buf);
 buf |= ETH_INT_ENP_PHY_INT;
 err = lan78xx_write_reg(sc, ETH_INT_EP_CTL, buf);





 err = lan78xx_read_reg(sc, ETH_MAC_TX, &buf);
 buf |= ETH_MAC_TX_TXEN_;
 err = lan78xx_write_reg(sc, ETH_MAC_TX, buf);


 err = lan78xx_read_reg(sc, ETH_FCT_TX_CTL, &buf);
 buf |= ETH_FCT_TX_CTL_EN_;
 err = lan78xx_write_reg(sc, ETH_FCT_TX_CTL, buf);





 err = lan78xx_set_rx_max_frame_length(sc, ETHER_MAX_LEN);


 if ((err = lan78xx_phy_init(sc)) != 0)
  goto init_failed;


 err = lan78xx_read_reg(sc, ETH_MAC_RX, &buf);
 buf |= ETH_MAC_RX_EN_;
 err = lan78xx_write_reg(sc, ETH_MAC_RX, buf);


 err = lan78xx_read_reg(sc, ETH_FCT_RX_CTL, &buf);
 buf |= ETH_FCT_TX_CTL_EN_;
 err = lan78xx_write_reg(sc, ETH_FCT_RX_CTL, buf);

 sc->sc_flags |= MUGE_FLAG_INIT_DONE;
 return (0);

init_failed:
 muge_err_printf(sc, "lan78xx_chip_init failed (err=%d)\n", err);
 return (err);
}
