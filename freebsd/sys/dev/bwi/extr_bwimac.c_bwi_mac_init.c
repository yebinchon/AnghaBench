
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rw_rev; scalar_t__ rw_type; } ;
struct bwi_softc {int sc_pwron_delay; int (* sc_init_tx_ring ) (struct bwi_softc*,int) ;int (* sc_init_rx_ring ) (struct bwi_softc*) ;int (* sc_init_txstats ) (struct bwi_softc*) ;int sc_dev; TYPE_1__ sc_bus_regwin; } ;
struct TYPE_4__ {int rf_ant_mode; } ;
struct bwi_mac {int mac_rev; int mac_flags; TYPE_2__ mac_rf; int mac_regwin; int mac_phy; struct bwi_softc* mac_sc; } ;


 int BWI_BBP_ATTEN ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_MACREV ;
 int BWI_CONF_LO ;
 int BWI_CONF_LO_REQTO ;
 int BWI_CONF_LO_REQTO_MASK ;
 int BWI_CONF_LO_SERVTO ;
 int BWI_CONF_LO_SERVTO_MASK ;
 int BWI_INTR_TIMER1 ;
 int BWI_MAC_F_HAS_TXSTATS ;
 int BWI_MAC_F_INITED ;
 int BWI_MAC_INTR_STATUS ;
 int BWI_MAC_POWERUP_DELAY ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_IHREN ;
 int BWI_MAC_STATUS_UCODE_JUMP0 ;
 scalar_t__ BWI_REGWIN_T_BUSPCIE ;
 int BWI_STATE_LO ;
 int BWI_TXRX_INTR_MASK (int) ;
 scalar_t__ BWI_TXRX_IS_RX (int) ;
 int BWI_TXRX_NRING ;
 int BWI_TXRX_RX_INTRS ;
 int BWI_TXRX_TX_INTRS ;
 int BWI_TX_NRING ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int) ;
 int CSR_WRITE_2 (struct bwi_softc*,int,int) ;
 int CSR_WRITE_4 (struct bwi_softc*,int,int) ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int,int) ;
 int __SHIFTIN (int ,int ) ;
 int bwi_bus_init (struct bwi_softc*,struct bwi_mac*) ;
 int bwi_mac_bss_param_init (struct bwi_mac*) ;
 int bwi_mac_fw_init (struct bwi_mac*) ;
 int bwi_mac_fw_load (struct bwi_mac*) ;
 int bwi_mac_gpio_init (struct bwi_mac*) ;
 int bwi_mac_hostflags_init (struct bwi_mac*) ;
 int bwi_mac_opmode_init (struct bwi_mac*) ;
 int bwi_mac_reset (struct bwi_mac*,int) ;
 int bwi_mac_setup_tpctl (struct bwi_mac*) ;
 int bwi_phy_calibrate (struct bwi_mac*) ;
 int bwi_phy_clear_state (int *) ;
 int bwi_phy_init (struct bwi_mac*) ;
 int bwi_regwin_is_enabled (struct bwi_softc*,int *) ;
 int bwi_rf_clear_state (TYPE_2__*) ;
 int bwi_rf_on (struct bwi_mac*) ;
 int bwi_rf_set_ant_mode (struct bwi_mac*,int ) ;
 int device_printf (int ,char*,...) ;
 int stub1 (struct bwi_softc*,int) ;
 int stub2 (struct bwi_softc*) ;
 int stub3 (struct bwi_softc*) ;

int
bwi_mac_init(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 int error, i;


 bwi_mac_setup_tpctl(mac);
 bwi_rf_clear_state(&mac->mac_rf);
 bwi_phy_clear_state(&mac->mac_phy);


 if (!bwi_regwin_is_enabled(sc, &mac->mac_regwin))
  bwi_mac_reset(mac, 1);


 error = bwi_bus_init(sc, mac);
 if (error)
  return error;


 if (sc->sc_bus_regwin.rw_rev <= 5 &&
     sc->sc_bus_regwin.rw_type != BWI_REGWIN_T_BUSPCIE) {
  CSR_SETBITS_4(sc, BWI_CONF_LO,
  __SHIFTIN(BWI_CONF_LO_SERVTO, BWI_CONF_LO_SERVTO_MASK) |
  __SHIFTIN(BWI_CONF_LO_REQTO, BWI_CONF_LO_REQTO_MASK));
 }


 error = bwi_phy_calibrate(mac);
 if (error) {
  device_printf(sc->sc_dev, "PHY calibrate failed\n");
  return error;
 }


 CSR_WRITE_4(sc, BWI_MAC_STATUS,
      BWI_MAC_STATUS_UCODE_JUMP0 |
      BWI_MAC_STATUS_IHREN);




 error = bwi_mac_fw_load(mac);
 if (error)
  return error;

 error = bwi_mac_gpio_init(mac);
 if (error)
  return error;

 error = bwi_mac_fw_init(mac);
 if (error)
  return error;




 bwi_rf_on(mac);






 CSR_WRITE_2(sc, BWI_BBP_ATTEN, 0);
 bwi_phy_init(mac);






 bwi_rf_set_ant_mode(mac, mac->mac_rf.rf_ant_mode);




 bwi_mac_opmode_init(mac);


 if (mac->mac_rev < 3) {
  CSR_WRITE_2(sc, 0x60e, 0);
  CSR_WRITE_2(sc, 0x610, 0x8000);
  CSR_WRITE_2(sc, 0x604, 0);
  CSR_WRITE_2(sc, 0x606, 0x200);
 } else {
  CSR_WRITE_4(sc, 0x188, 0x80000000);
  CSR_WRITE_4(sc, 0x18c, 0x2000000);
 }




 CSR_WRITE_4(sc, BWI_MAC_INTR_STATUS, BWI_INTR_TIMER1);
 for (i = 0; i < BWI_TXRX_NRING; ++i) {
  uint32_t intrs;

  if (BWI_TXRX_IS_RX(i))
   intrs = BWI_TXRX_RX_INTRS;
  else
   intrs = BWI_TXRX_TX_INTRS;
  CSR_WRITE_4(sc, BWI_TXRX_INTR_MASK(i), intrs);
 }


 CSR_SETBITS_4(sc, BWI_STATE_LO, 0x100000);


 CSR_WRITE_2(sc, BWI_MAC_POWERUP_DELAY, sc->sc_pwron_delay);


 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_MACREV, mac->mac_rev);




 bwi_mac_hostflags_init(mac);




 bwi_mac_bss_param_init(mac);




 for (i = 0; i < BWI_TX_NRING; ++i) {
  error = sc->sc_init_tx_ring(sc, i);
  if (error) {
   device_printf(sc->sc_dev,
      "can't initialize %dth TX ring\n", i);
   return error;
  }
 }




 error = sc->sc_init_rx_ring(sc);
 if (error) {
  device_printf(sc->sc_dev, "can't initialize RX ring\n");
  return error;
 }




 if (mac->mac_flags & BWI_MAC_F_HAS_TXSTATS) {
  error = sc->sc_init_txstats(sc);
  if (error) {
   device_printf(sc->sc_dev,
      "can't initialize TX stats ring\n");
   return error;
  }
 }


 CSR_WRITE_2(sc, 0x612, 0x50);
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, 0x416, 0x50);
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, 0x414, 0x1f4);

 mac->mac_flags |= BWI_MAC_F_INITED;
 return 0;
}
