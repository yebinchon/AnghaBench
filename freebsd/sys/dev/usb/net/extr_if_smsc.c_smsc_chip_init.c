
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ue_dev; int ue_udev; int ue_eaddr; } ;
struct smsc_softc {int sc_rev_id; int sc_mac_csr; TYPE_1__ sc_ue; int sc_mtx; } ;


 int AFC_CFG_DEFAULT ;
 scalar_t__ ETHERTYPE_VLAN ;
 int ETHER_ALIGN ;
 int SMSC_AFC_CFG ;
 int SMSC_BULK_IN_DLY ;
 int SMSC_BURST_CAP ;
 int SMSC_FLOW ;
 int SMSC_HW_CFG ;
 int SMSC_HW_CFG_BCE ;
 int SMSC_HW_CFG_BIR ;
 int SMSC_HW_CFG_LRST ;
 int SMSC_HW_CFG_MEF ;
 int SMSC_HW_CFG_RXDOFF ;
 int SMSC_ID_REV ;
 int SMSC_ID_REV_CHIP_ID_MASK ;
 int SMSC_ID_REV_CHIP_REV_MASK ;
 int SMSC_INTR_STATUS ;
 int SMSC_LED_GPIO_CFG ;
 int SMSC_LED_GPIO_CFG_FDX_LED ;
 int SMSC_LED_GPIO_CFG_LNK_LED ;
 int SMSC_LED_GPIO_CFG_SPD_LED ;
 int SMSC_LOCK (struct smsc_softc*) ;
 int SMSC_MAC_CSR ;
 int SMSC_MAC_CSR_RXEN ;
 int SMSC_MAC_CSR_TXEN ;
 int SMSC_PM_CTRL ;
 int SMSC_PM_CTRL_PHY_RST ;
 int SMSC_TX_CFG ;
 int SMSC_TX_CFG_ON ;
 int SMSC_UNLOCK (struct smsc_softc*) ;
 int SMSC_VLAN1 ;
 scalar_t__ USB_SPEED_HIGH ;
 int device_printf (int ,char*,int,int) ;
 int mtx_owned (int *) ;
 int smsc_err_printf (struct smsc_softc*,char*,int) ;
 int smsc_phy_init (struct smsc_softc*) ;
 int smsc_read_reg (struct smsc_softc*,int ,int*) ;
 int smsc_setmacaddress (struct smsc_softc*,int ) ;
 int smsc_wait_for_bits (struct smsc_softc*,int ,int) ;
 int smsc_warn_printf (struct smsc_softc*,char*,...) ;
 int smsc_write_reg (struct smsc_softc*,int ,int) ;
 scalar_t__ usbd_get_speed (int ) ;

__attribute__((used)) static int
smsc_chip_init(struct smsc_softc *sc)
{
 int err;
 int locked;
 uint32_t reg_val;
 int burst_cap;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  SMSC_LOCK(sc);


 smsc_write_reg(sc, SMSC_HW_CFG, SMSC_HW_CFG_LRST);

 if ((err = smsc_wait_for_bits(sc, SMSC_HW_CFG, SMSC_HW_CFG_LRST)) != 0) {
  smsc_warn_printf(sc, "timed-out waiting for reset to complete\n");
  goto init_failed;
 }


 smsc_write_reg(sc, SMSC_PM_CTRL, SMSC_PM_CTRL_PHY_RST);

 if ((err = smsc_wait_for_bits(sc, SMSC_PM_CTRL, SMSC_PM_CTRL_PHY_RST)) != 0) {
  smsc_warn_printf(sc, "timed-out waiting for phy reset to complete\n");
  goto init_failed;
 }


 if ((err = smsc_setmacaddress(sc, sc->sc_ue.ue_eaddr)) != 0) {
  smsc_warn_printf(sc, "failed to set the MAC address\n");
  goto init_failed;
 }




 if ((err = smsc_read_reg(sc, SMSC_HW_CFG, &reg_val)) != 0) {
  smsc_warn_printf(sc, "failed to read HW_CFG: %d\n", err);
  goto init_failed;
 }
 reg_val |= SMSC_HW_CFG_BIR;
 smsc_write_reg(sc, SMSC_HW_CFG, reg_val);
 if (usbd_get_speed(sc->sc_ue.ue_udev) == USB_SPEED_HIGH)
  burst_cap = 37;
 else
  burst_cap = 128;

 smsc_write_reg(sc, SMSC_BURST_CAP, burst_cap);


 smsc_write_reg(sc, SMSC_BULK_IN_DLY, 0x00002000);






 if ((err = smsc_read_reg(sc, SMSC_HW_CFG, &reg_val)) < 0) {
  smsc_warn_printf(sc, "failed to read HW_CFG: (err = %d)\n", err);
  goto init_failed;
 }




 reg_val &= ~SMSC_HW_CFG_RXDOFF;
 reg_val |= (ETHER_ALIGN << 9) & SMSC_HW_CFG_RXDOFF;




 reg_val |= (SMSC_HW_CFG_MEF | SMSC_HW_CFG_BCE);

 smsc_write_reg(sc, SMSC_HW_CFG, reg_val);


 smsc_write_reg(sc, SMSC_INTR_STATUS, 0xffffffff);


 if ((err = smsc_read_reg(sc, SMSC_ID_REV, &sc->sc_rev_id)) < 0) {
  smsc_warn_printf(sc, "failed to read ID_REV (err = %d)\n", err);
  goto init_failed;
 }

 device_printf(sc->sc_ue.ue_dev, "chip 0x%04lx, rev. %04lx\n",
     (sc->sc_rev_id & SMSC_ID_REV_CHIP_ID_MASK) >> 16,
     (sc->sc_rev_id & SMSC_ID_REV_CHIP_REV_MASK));


 reg_val = SMSC_LED_GPIO_CFG_SPD_LED | SMSC_LED_GPIO_CFG_LNK_LED |
           SMSC_LED_GPIO_CFG_FDX_LED;
 smsc_write_reg(sc, SMSC_LED_GPIO_CFG, reg_val);




 smsc_write_reg(sc, SMSC_FLOW, 0);

 smsc_write_reg(sc, SMSC_AFC_CFG, AFC_CFG_DEFAULT);


 if ((err = smsc_read_reg(sc, SMSC_MAC_CSR, &sc->sc_mac_csr)) < 0) {
  smsc_warn_printf(sc, "failed to read MAC_CSR (err=%d)\n", err);
  goto init_failed;
 }


 smsc_write_reg(sc, SMSC_VLAN1, (uint32_t)ETHERTYPE_VLAN);




 if ((err = smsc_phy_init(sc)) != 0)
  goto init_failed;





 sc->sc_mac_csr |= SMSC_MAC_CSR_TXEN;
 smsc_write_reg(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
 smsc_write_reg(sc, SMSC_TX_CFG, SMSC_TX_CFG_ON);




 sc->sc_mac_csr |= SMSC_MAC_CSR_RXEN;
 smsc_write_reg(sc, SMSC_MAC_CSR, sc->sc_mac_csr);

 if (!locked)
  SMSC_UNLOCK(sc);

 return (0);

init_failed:
 if (!locked)
  SMSC_UNLOCK(sc);

 smsc_err_printf(sc, "smsc_chip_init failed (err=%d)\n", err);
 return (err);
}
