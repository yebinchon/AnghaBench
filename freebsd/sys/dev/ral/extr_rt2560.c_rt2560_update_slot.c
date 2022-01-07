
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rt2560_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_curmode; struct rt2560_softc* ic_softc; } ;


 int DPRINTF (struct rt2560_softc*,char*,int) ;
 int IEEE80211_DUR_DIFS (int,int) ;
 int IEEE80211_DUR_SLOT ;
 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 scalar_t__ IEEE80211_MODE_11B ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_SIFS ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_CSR11 ;
 int RT2560_CSR18 ;
 int RT2560_CSR19 ;
 int RT2560_TXRX_TURNAROUND ;

__attribute__((used)) static void
rt2560_update_slot(struct ieee80211com *ic)
{
 struct rt2560_softc *sc = ic->ic_softc;
 uint8_t slottime;
 uint16_t tx_sifs, tx_pifs, tx_difs, eifs;
 uint32_t tmp;


 slottime = IEEE80211_GET_SLOTTIME(ic);
 tx_sifs = RAL_SIFS - RT2560_TXRX_TURNAROUND;
 tx_pifs = tx_sifs + slottime;
 tx_difs = IEEE80211_DUR_DIFS(tx_sifs, slottime);
 eifs = (ic->ic_curmode == IEEE80211_MODE_11B) ? 364 : 60;

 tmp = RAL_READ(sc, RT2560_CSR11);
 tmp = (tmp & ~0x1f00) | slottime << 8;
 RAL_WRITE(sc, RT2560_CSR11, tmp);

 tmp = tx_pifs << 16 | tx_sifs;
 RAL_WRITE(sc, RT2560_CSR18, tmp);

 tmp = eifs << 16 | tx_difs;
 RAL_WRITE(sc, RT2560_CSR19, tmp);

 DPRINTF(sc, "setting slottime to %uus\n", slottime);
}
