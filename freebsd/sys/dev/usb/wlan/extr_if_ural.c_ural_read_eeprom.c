
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int* ic_macaddr; } ;
struct ural_softc {int rf_rev; int hw_radio; int led_mode; int rx_ant; int tx_ant; int nb_ant; int* bbp_prom; int* txpow; struct ieee80211com sc_ic; } ;


 int RAL_EEPROM_ADDRESS ;
 int RAL_EEPROM_BBP_BASE ;
 int RAL_EEPROM_CONFIG0 ;
 int RAL_EEPROM_TXPOWER ;
 int le16toh (int) ;
 int ural_eeprom_read (struct ural_softc*,int ,int*,int) ;

__attribute__((used)) static void
ural_read_eeprom(struct ural_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;

 ural_eeprom_read(sc, RAL_EEPROM_CONFIG0, &val, 2);
 val = le16toh(val);
 sc->rf_rev = (val >> 11) & 0x7;
 sc->hw_radio = (val >> 10) & 0x1;
 sc->led_mode = (val >> 6) & 0x7;
 sc->rx_ant = (val >> 4) & 0x3;
 sc->tx_ant = (val >> 2) & 0x3;
 sc->nb_ant = val & 0x3;


 ural_eeprom_read(sc, RAL_EEPROM_ADDRESS, ic->ic_macaddr, 6);


 ural_eeprom_read(sc, RAL_EEPROM_BBP_BASE, sc->bbp_prom, 2 * 16);


 ural_eeprom_read(sc, RAL_EEPROM_TXPOWER, sc->txpow, 14);
}
