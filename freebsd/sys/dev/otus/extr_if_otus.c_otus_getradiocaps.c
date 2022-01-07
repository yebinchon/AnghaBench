
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int opCapFlags; } ;
struct TYPE_4__ {TYPE_1__ baseEepHeader; } ;
struct otus_softc {TYPE_2__ eeprom; scalar_t__ sc_ht; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int AR5416_OPFLAGS_11A ;
 int AR5416_OPFLAGS_11G ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NG ;
 int IEEE80211_MODE_BYTES ;
 int * ar_chans ;
 int ieee80211_add_channel_list_2ghz (struct ieee80211_channel*,int,int*,int *,int,int *,int ) ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int,int*,int *,scalar_t__,int *,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ nitems (int *) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
otus_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct otus_softc *sc = ic->ic_softc;
 uint8_t bands[IEEE80211_MODE_BYTES];


 memset(bands, 0, sizeof(bands));
 if (sc->eeprom.baseEepHeader.opCapFlags & AR5416_OPFLAGS_11G) {
  setbit(bands, IEEE80211_MODE_11B);
  setbit(bands, IEEE80211_MODE_11G);




  ieee80211_add_channel_list_2ghz(chans, maxchans, nchans,
      ar_chans, 14, bands, 0);
 }
 if (sc->eeprom.baseEepHeader.opCapFlags & AR5416_OPFLAGS_11A) {
  setbit(bands, IEEE80211_MODE_11A);
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
                    &ar_chans[14], nitems(ar_chans) - 14, bands, 0);
 }
}
