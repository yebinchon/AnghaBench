
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iwi_softc {int sc_dev; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;
typedef int device_t ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int memset (int *,int ,size_t) ;
 int pci_get_device (int ) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
iwi_collect_bands(struct ieee80211com *ic, uint8_t bands[], size_t bands_sz)
{
 struct iwi_softc *sc = ic->ic_softc;
 device_t dev = sc->sc_dev;

 memset(bands, 0, bands_sz);
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 if (pci_get_device(dev) >= 0x4223)
  setbit(bands, IEEE80211_MODE_11A);
}
