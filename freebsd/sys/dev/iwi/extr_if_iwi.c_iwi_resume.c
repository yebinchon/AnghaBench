
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwi_softc {struct ieee80211com sc_ic; } ;
typedef int device_t ;


 struct iwi_softc* device_get_softc (int ) ;
 int ieee80211_resume_all (struct ieee80211com*) ;
 int pci_write_config (int ,int,int ,int) ;

__attribute__((used)) static int
iwi_resume(device_t dev)
{
 struct iwi_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;

 pci_write_config(dev, 0x41, 0, 1);

 ieee80211_resume_all(ic);
 return 0;
}
