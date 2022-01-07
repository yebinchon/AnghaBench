
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; int sc_ic; int sc_attached; } ;
typedef int device_t ;


 int IWM_FLAG_SCANNING ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int PCI_CFG_RETRY_TIMEOUT ;
 struct iwm_softc* device_get_softc (int ) ;
 int ieee80211_resume_all (int *) ;
 int iwm_init_task (struct iwm_softc*) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
iwm_resume(device_t dev)
{
 struct iwm_softc *sc = device_get_softc(dev);
 int do_reinit = 0;





 pci_write_config(dev, PCI_CFG_RETRY_TIMEOUT, 0x00, 1);

 if (!sc->sc_attached)
  return 0;

 iwm_init_task(device_get_softc(dev));

 IWM_LOCK(sc);
 if (sc->sc_flags & IWM_FLAG_SCANNING) {
  sc->sc_flags &= ~IWM_FLAG_SCANNING;
  do_reinit = 1;
 }
 IWM_UNLOCK(sc);

 if (do_reinit)
  ieee80211_resume_all(&sc->sc_ic);

 return 0;
}
