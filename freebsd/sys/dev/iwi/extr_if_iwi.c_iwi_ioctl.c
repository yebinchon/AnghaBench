
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct iwi_softc {int sc_linkqual; } ;
struct iwi_notif_link_quality {int dummy; } ;
struct ifreq {int dummy; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;


 int ENOTTY ;
 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;


 int copyout (int *,int ,int) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
iwi_ioctl(struct ieee80211com *ic, u_long cmd, void *data)
{
 struct ifreq *ifr = data;
 struct iwi_softc *sc = ic->ic_softc;
 int error;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 switch (cmd) {
 case 129:

  error = copyout(&sc->sc_linkqual, ifr_data_get_ptr(ifr),
      sizeof(struct iwi_notif_link_quality));
  break;
 case 128:
  memset(&sc->sc_linkqual, 0,
      sizeof(struct iwi_notif_link_quality));
  error = 0;
  break;
 default:
  error = ENOTTY;
  break;
 }
 IWI_UNLOCK(sc);

 return (error);
}
