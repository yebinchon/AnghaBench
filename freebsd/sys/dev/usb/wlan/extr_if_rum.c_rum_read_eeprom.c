
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int* ic_macaddr; } ;
struct rum_softc {int rf_rev; int hw_radio; int rx_ant; int tx_ant; int nb_ant; int ext_5ghz_lna; int ext_2ghz_lna; int rssi_2ghz_corr; int rssi_5ghz_corr; int rffreq; int* txpow; int* bbp_prom; TYPE_1__ sc_ic; } ;
typedef void* int8_t ;


 int DPRINTF (char*,int,...) ;
 int RT2573_EEPROM_ADDRESS ;
 int RT2573_EEPROM_ANTENNA ;
 int RT2573_EEPROM_BBP_BASE ;
 int RT2573_EEPROM_CONFIG2 ;
 int RT2573_EEPROM_FREQ_OFFSET ;
 int RT2573_EEPROM_RSSI_2GHZ_OFFSET ;
 int RT2573_EEPROM_RSSI_5GHZ_OFFSET ;
 int RT2573_EEPROM_TXPOWER ;
 int le16toh (int) ;
 int memset (int*,int,int) ;
 int rum_eeprom_read (struct rum_softc*,int ,int*,int) ;

__attribute__((used)) static void
rum_read_eeprom(struct rum_softc *sc)
{
 uint16_t val;





 rum_eeprom_read(sc, RT2573_EEPROM_ADDRESS, sc->sc_ic.ic_macaddr, 6);

 rum_eeprom_read(sc, RT2573_EEPROM_ANTENNA, &val, 2);
 val = le16toh(val);
 sc->rf_rev = (val >> 11) & 0x1f;
 sc->hw_radio = (val >> 10) & 0x1;
 sc->rx_ant = (val >> 4) & 0x3;
 sc->tx_ant = (val >> 2) & 0x3;
 sc->nb_ant = val & 0x3;

 DPRINTF("RF revision=%d\n", sc->rf_rev);

 rum_eeprom_read(sc, RT2573_EEPROM_CONFIG2, &val, 2);
 val = le16toh(val);
 sc->ext_5ghz_lna = (val >> 6) & 0x1;
 sc->ext_2ghz_lna = (val >> 4) & 0x1;

 DPRINTF("External 2GHz LNA=%d\nExternal 5GHz LNA=%d\n",
     sc->ext_2ghz_lna, sc->ext_5ghz_lna);

 rum_eeprom_read(sc, RT2573_EEPROM_RSSI_2GHZ_OFFSET, &val, 2);
 val = le16toh(val);
 if ((val & 0xff) != 0xff)
  sc->rssi_2ghz_corr = (int8_t)(val & 0xff);


 if (sc->rssi_2ghz_corr < -10 || sc->rssi_2ghz_corr > 10)
  sc->rssi_2ghz_corr = 0;

 rum_eeprom_read(sc, RT2573_EEPROM_RSSI_5GHZ_OFFSET, &val, 2);
 val = le16toh(val);
 if ((val & 0xff) != 0xff)
  sc->rssi_5ghz_corr = (int8_t)(val & 0xff);


 if (sc->rssi_5ghz_corr < -10 || sc->rssi_5ghz_corr > 10)
  sc->rssi_5ghz_corr = 0;

 if (sc->ext_2ghz_lna)
  sc->rssi_2ghz_corr -= 14;
 if (sc->ext_5ghz_lna)
  sc->rssi_5ghz_corr -= 14;

 DPRINTF("RSSI 2GHz corr=%d\nRSSI 5GHz corr=%d\n",
     sc->rssi_2ghz_corr, sc->rssi_5ghz_corr);

 rum_eeprom_read(sc, RT2573_EEPROM_FREQ_OFFSET, &val, 2);
 val = le16toh(val);
 if ((val & 0xff) != 0xff)
  sc->rffreq = val & 0xff;

 DPRINTF("RF freq=%d\n", sc->rffreq);


 rum_eeprom_read(sc, RT2573_EEPROM_TXPOWER, sc->txpow, 14);

 memset(sc->txpow + 14, 24, sizeof (sc->txpow) - 14);






 rum_eeprom_read(sc, RT2573_EEPROM_BBP_BASE, sc->bbp_prom, 2 * 16);
}
