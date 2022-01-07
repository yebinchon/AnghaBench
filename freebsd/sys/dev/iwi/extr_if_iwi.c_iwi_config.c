
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwi_txpower {int silence_threshold; int multicast_enabled; int answer_pbreq; int disable_unicast_decryption; int disable_multicast_decryption; int allow_invalid_frames; int allow_beacon_and_probe_resp; int allow_mgt; int nchan; int mode; TYPE_1__* chan; int antenna; int bluetooth_coexistence; } ;
typedef struct iwi_txpower uint8_t ;
typedef struct iwi_txpower uint32_t ;
struct ieee80211com {scalar_t__ ic_opmode; int * ic_sup_rates; struct iwi_txpower* ic_macaddr; int ic_vaps; } ;
struct iwi_softc {int antenna; int bluetooth; struct ieee80211com sc_ic; } ;
struct iwi_configuration {int silence_threshold; int multicast_enabled; int answer_pbreq; int disable_unicast_decryption; int disable_multicast_decryption; int allow_invalid_frames; int allow_beacon_and_probe_resp; int allow_mgt; int nchan; int mode; TYPE_1__* chan; int antenna; int bluetooth_coexistence; } ;
struct ieee80211vap {struct iwi_txpower* iv_myaddr; } ;
struct TYPE_2__ {int chan; int power; } ;


 int DPRINTF (char*) ;
 int IEEE80211_ADDR_LEN ;
 size_t IEEE80211_MODE_11A ;
 size_t IEEE80211_MODE_11G ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int IWI_CMD_ENABLE ;
 int IWI_CMD_SET_CONFIG ;
 int IWI_CMD_SET_IV ;
 int IWI_CMD_SET_MAC_ADDRESS ;
 int IWI_CMD_SET_TX_POWER ;
 int IWI_LOCK_ASSERT (struct iwi_softc*) ;
 int IWI_MODE_11A ;
 int IWI_MODE_11B ;
 int IWI_MODE_11G ;
 int IWI_RATESET_TYPE_SUPPORTED ;
 int IWI_TXPOWER_MAX ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int arc4random () ;
 struct iwi_txpower htole32 (int ) ;
 int iwi_cmd (struct iwi_softc*,int ,struct iwi_txpower*,int) ;
 int iwi_set_rateset (struct iwi_softc*,int *,int ,int ) ;
 int le32toh (struct iwi_txpower) ;
 int memset (struct iwi_txpower*,int ,int) ;

__attribute__((used)) static int
iwi_config(struct iwi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 struct iwi_configuration config;
 struct iwi_txpower power;
 uint8_t *macaddr;
 uint32_t data;
 int error, i;

 IWI_LOCK_ASSERT(sc);

 macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;
 DPRINTF(("Setting MAC address to %6D\n", macaddr, ":"));
 error = iwi_cmd(sc, IWI_CMD_SET_MAC_ADDRESS, macaddr,
     IEEE80211_ADDR_LEN);
 if (error != 0)
  return error;

 memset(&config, 0, sizeof config);
 config.bluetooth_coexistence = sc->bluetooth;
 config.silence_threshold = 0x1e;
 config.antenna = sc->antenna;
 config.multicast_enabled = 1;
 config.answer_pbreq = (ic->ic_opmode == IEEE80211_M_IBSS) ? 1 : 0;
 config.disable_unicast_decryption = 1;
 config.disable_multicast_decryption = 1;
 if (ic->ic_opmode == IEEE80211_M_MONITOR) {
  config.allow_invalid_frames = 1;
  config.allow_beacon_and_probe_resp = 1;
  config.allow_mgt = 1;
 }
 DPRINTF(("Configuring adapter\n"));
 error = iwi_cmd(sc, IWI_CMD_SET_CONFIG, &config, sizeof config);
 if (error != 0)
  return error;
 if (ic->ic_opmode == IEEE80211_M_IBSS) {
  power.mode = IWI_MODE_11B;
  power.nchan = 11;
  for (i = 0; i < 11; i++) {
   power.chan[i].chan = i + 1;
   power.chan[i].power = IWI_TXPOWER_MAX;
  }
  DPRINTF(("Setting .11b channels tx power\n"));
  error = iwi_cmd(sc, IWI_CMD_SET_TX_POWER, &power, sizeof power);
  if (error != 0)
   return error;

  power.mode = IWI_MODE_11G;
  DPRINTF(("Setting .11g channels tx power\n"));
  error = iwi_cmd(sc, IWI_CMD_SET_TX_POWER, &power, sizeof power);
  if (error != 0)
   return error;
 }

 error = iwi_set_rateset(sc, &ic->ic_sup_rates[IEEE80211_MODE_11G],
     IWI_MODE_11G, IWI_RATESET_TYPE_SUPPORTED);
 if (error != 0)
  return error;

 error = iwi_set_rateset(sc, &ic->ic_sup_rates[IEEE80211_MODE_11A],
     IWI_MODE_11A, IWI_RATESET_TYPE_SUPPORTED);
 if (error != 0)
  return error;

 data = htole32(arc4random());
 DPRINTF(("Setting initialization vector to %u\n", le32toh(data)));
 error = iwi_cmd(sc, IWI_CMD_SET_IV, &data, sizeof data);
 if (error != 0)
  return error;


 DPRINTF(("Enabling adapter\n"));
 return iwi_cmd(sc, IWI_CMD_ENABLE, ((void*)0), 0);
}
