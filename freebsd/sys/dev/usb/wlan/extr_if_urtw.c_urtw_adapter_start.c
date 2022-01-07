
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct ieee80211com {int * ic_macaddr; int ic_vaps; } ;
struct urtw_softc {scalar_t__ (* sc_rf_init ) (struct urtw_softc*) ;int sc_sens; int (* sc_rf_set_sens ) (struct urtw_softc*,int ) ;struct ieee80211com sc_ic; } ;
struct ieee80211vap {int * iv_myaddr; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int URTW_ADDR_MAGIC1 ;
 int URTW_ADDR_MAGIC2 ;
 int URTW_ADDR_MAGIC3 ;
 int URTW_EPROM_CMD_CONFIG ;
 int URTW_EPROM_CMD_NORMAL ;
 int URTW_GPIO ;
 int URTW_INT_TIMEOUT ;
 int URTW_LED_CTL_POWER_ON ;
 int URTW_PSR ;
 int URTW_RATE_FALLBACK ;
 int URTW_RATE_FALLBACK_ENABLE ;
 int URTW_TALLY_SEL ;
 int URTW_WPA_CONFIG ;
 scalar_t__ stub1 (struct urtw_softc*) ;
 int stub2 (struct urtw_softc*,int ) ;
 scalar_t__ urtw_intr_enable (struct urtw_softc*) ;
 scalar_t__ urtw_led_ctl (struct urtw_softc*,int ) ;
 scalar_t__ urtw_reset (struct urtw_softc*) ;
 int urtw_set_macaddr (struct urtw_softc*,int const*) ;
 scalar_t__ urtw_set_mode (struct urtw_softc*,int ) ;
 scalar_t__ urtw_set_rate (struct urtw_softc*) ;
 scalar_t__ urtw_update_msr (struct urtw_softc*) ;
 int urtw_write16_m (struct urtw_softc*,int ,int) ;
 int urtw_write32_m (struct urtw_softc*,int ,int ) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_adapter_start(struct urtw_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 const uint8_t *macaddr;
 usb_error_t error;

 error = urtw_reset(sc);
 if (error)
  goto fail;

 urtw_write8_m(sc, URTW_ADDR_MAGIC1, 0);
 urtw_write8_m(sc, URTW_GPIO, 0);


 urtw_write8_m(sc, URTW_ADDR_MAGIC1, 4);
 error = urtw_led_ctl(sc, URTW_LED_CTL_POWER_ON);
 if (error != 0)
  goto fail;

 error = urtw_set_mode(sc, URTW_EPROM_CMD_CONFIG);
 if (error)
  goto fail;

 macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;
 urtw_set_macaddr(sc, macaddr);
 if (error)
  goto fail;

 error = urtw_set_mode(sc, URTW_EPROM_CMD_NORMAL);
 if (error)
  goto fail;

 error = urtw_update_msr(sc);
 if (error)
  goto fail;

 urtw_write32_m(sc, URTW_INT_TIMEOUT, 0);
 urtw_write8_m(sc, URTW_WPA_CONFIG, 0);
 urtw_write8_m(sc, URTW_RATE_FALLBACK, URTW_RATE_FALLBACK_ENABLE | 0x1);
 error = urtw_set_rate(sc);
 if (error != 0)
  goto fail;

 error = sc->sc_rf_init(sc);
 if (error != 0)
  goto fail;
 if (sc->sc_rf_set_sens != ((void*)0))
  sc->sc_rf_set_sens(sc, sc->sc_sens);


 urtw_write16_m(sc, URTW_PSR, 1);
 urtw_write16_m(sc, URTW_ADDR_MAGIC2, 0x10);
 urtw_write8_m(sc, URTW_TALLY_SEL, 0x80);
 urtw_write8_m(sc, URTW_ADDR_MAGIC3, 0x60);

 urtw_write16_m(sc, URTW_PSR, 0);
 urtw_write8_m(sc, URTW_ADDR_MAGIC1, 4);

 error = urtw_intr_enable(sc);
 if (error != 0)
  goto fail;

fail:
 return (error);
}
