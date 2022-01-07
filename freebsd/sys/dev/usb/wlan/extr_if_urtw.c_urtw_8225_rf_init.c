
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct urtw_softc {int sc_mtx; } ;
struct TYPE_5__ {int reg; int val; } ;


 int URTW_8225_ADDR_0_DATA_MAGIC3 ;
 int URTW_8225_ADDR_0_DATA_MAGIC4 ;
 int URTW_8225_ADDR_0_DATA_MAGIC5 ;
 int URTW_8225_ADDR_0_MAGIC ;
 int URTW_8225_ADDR_1_MAGIC ;
 int URTW_8225_ADDR_2_DATA_MAGIC1 ;
 int URTW_8225_ADDR_2_DATA_MAGIC2 ;
 int URTW_8225_ADDR_2_MAGIC ;
 int URTW_8225_ANAPARAM_ON ;
 int URTW_BRSR ;
 int URTW_CONFIG3 ;
 int URTW_EPROM_CMD_CONFIG ;
 int URTW_EPROM_CMD_NORMAL ;
 int URTW_HSSI_PARA ;
 int URTW_RF_PARA ;
 int URTW_RF_TIMING ;
 int URTW_TESTR ;
 unsigned int nitems (TYPE_1__*) ;
 scalar_t__ urtw_8180_set_anaparam (struct urtw_softc*,int ) ;
 scalar_t__ urtw_8185_rf_pins_enable (struct urtw_softc*) ;
 scalar_t__ urtw_8185_tx_antenna (struct urtw_softc*,int) ;
 int urtw_8187_write_phy_cck (struct urtw_softc*,int,int) ;
 int urtw_8187_write_phy_ofdm (struct urtw_softc*,int,int) ;
 int* urtw_8225_agc ;
 TYPE_1__* urtw_8225_rf_part1 ;
 TYPE_1__* urtw_8225_rf_part2 ;
 TYPE_1__* urtw_8225_rf_part3 ;
 scalar_t__ urtw_8225_rf_set_chan (struct urtw_softc*,int) ;
 int* urtw_8225_rxgain ;
 scalar_t__ urtw_8225_set_txpwrlvl (struct urtw_softc*,int) ;
 scalar_t__ urtw_8225_setgain (struct urtw_softc*,int) ;
 scalar_t__ urtw_8225_usb_init (struct urtw_softc*) ;
 int urtw_8225_write (struct urtw_softc*,int,int) ;
 int urtw_read16_m (struct urtw_softc*,int ,int *) ;
 scalar_t__ urtw_set_mode (struct urtw_softc*,int ) ;
 int urtw_write16_m (struct urtw_softc*,int ,int) ;
 int urtw_write32_m (struct urtw_softc*,int ,int) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225_rf_init(struct urtw_softc *sc)
{
 unsigned int i;
 uint16_t data;
 usb_error_t error;

 error = urtw_8180_set_anaparam(sc, URTW_8225_ANAPARAM_ON);
 if (error)
  goto fail;

 error = urtw_8225_usb_init(sc);
 if (error)
  goto fail;

 urtw_write32_m(sc, URTW_RF_TIMING, 0x000a8008);
 urtw_read16_m(sc, URTW_BRSR, &data);
 urtw_write16_m(sc, URTW_BRSR, 0xffff);
 urtw_write32_m(sc, URTW_RF_PARA, 0x100044);

 error = urtw_set_mode(sc, URTW_EPROM_CMD_CONFIG);
 if (error)
  goto fail;
 urtw_write8_m(sc, URTW_CONFIG3, 0x44);
 error = urtw_set_mode(sc, URTW_EPROM_CMD_NORMAL);
 if (error)
  goto fail;

 error = urtw_8185_rf_pins_enable(sc);
 if (error)
  goto fail;
 usb_pause_mtx(&sc->sc_mtx, 1000);

 for (i = 0; i < nitems(urtw_8225_rf_part1); i++) {
  urtw_8225_write(sc, urtw_8225_rf_part1[i].reg,
      urtw_8225_rf_part1[i].val);
  usb_pause_mtx(&sc->sc_mtx, 1);
 }
 usb_pause_mtx(&sc->sc_mtx, 100);
 urtw_8225_write(sc,
     URTW_8225_ADDR_2_MAGIC, URTW_8225_ADDR_2_DATA_MAGIC1);
 usb_pause_mtx(&sc->sc_mtx, 200);
 urtw_8225_write(sc,
     URTW_8225_ADDR_2_MAGIC, URTW_8225_ADDR_2_DATA_MAGIC2);
 usb_pause_mtx(&sc->sc_mtx, 200);
 urtw_8225_write(sc,
     URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC3);

 for (i = 0; i < 95; i++) {
  urtw_8225_write(sc, URTW_8225_ADDR_1_MAGIC, (uint8_t)(i + 1));
  urtw_8225_write(sc, URTW_8225_ADDR_2_MAGIC, urtw_8225_rxgain[i]);
 }

 urtw_8225_write(sc,
     URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC4);
 urtw_8225_write(sc,
     URTW_8225_ADDR_0_MAGIC, URTW_8225_ADDR_0_DATA_MAGIC5);

 for (i = 0; i < 128; i++) {
  urtw_8187_write_phy_ofdm(sc, 0xb, urtw_8225_agc[i]);
  usb_pause_mtx(&sc->sc_mtx, 1);
  urtw_8187_write_phy_ofdm(sc, 0xa, (uint8_t)i + 0x80);
  usb_pause_mtx(&sc->sc_mtx, 1);
 }

 for (i = 0; i < nitems(urtw_8225_rf_part2); i++) {
  urtw_8187_write_phy_ofdm(sc, urtw_8225_rf_part2[i].reg,
      urtw_8225_rf_part2[i].val);
  usb_pause_mtx(&sc->sc_mtx, 1);
 }

 error = urtw_8225_setgain(sc, 4);
 if (error)
  goto fail;

 for (i = 0; i < nitems(urtw_8225_rf_part3); i++) {
  urtw_8187_write_phy_cck(sc, urtw_8225_rf_part3[i].reg,
      urtw_8225_rf_part3[i].val);
  usb_pause_mtx(&sc->sc_mtx, 1);
 }

 urtw_write8_m(sc, URTW_TESTR, 0x0d);

 error = urtw_8225_set_txpwrlvl(sc, 1);
 if (error)
  goto fail;

 urtw_8187_write_phy_cck(sc, 0x10, 0x9b);
 usb_pause_mtx(&sc->sc_mtx, 1);
 urtw_8187_write_phy_ofdm(sc, 0x26, 0x90);
 usb_pause_mtx(&sc->sc_mtx, 1);


 error = urtw_8185_tx_antenna(sc, 0x3);
 if (error)
  goto fail;
 urtw_write32_m(sc, URTW_HSSI_PARA, 0x3dc00002);

 error = urtw_8225_rf_set_chan(sc, 1);
fail:
 return (error);
}
