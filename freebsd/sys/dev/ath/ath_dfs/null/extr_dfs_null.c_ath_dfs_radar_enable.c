
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_softc {int sc_dodfs; int sc_ah; } ;
typedef int pe ;
struct TYPE_5__ {int pe_enabled; int pe_extchannel; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int HAL_CAP_DIVERSITY ;
 int HAL_CAP_PHYDIAG ;
 scalar_t__ HAL_OK ;
 int IEEE80211_IS_CHAN_DFS (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 int ath_hal_enabledfs (int ,TYPE_1__*) ;
 scalar_t__ ath_hal_getcapability (int ,int ,int ,int *) ;
 int ath_hal_getdfsdefaultthresh (int ,TYPE_1__*) ;
 int ath_hal_setcapability (int ,int ,int,int ,int *) ;
 int memset (TYPE_1__*,char,int) ;

int
ath_dfs_radar_enable(struct ath_softc *sc, struct ieee80211_channel *chan)
{

 HAL_PHYERR_PARAM pe;



 if (ath_hal_getcapability(sc->sc_ah,
     HAL_CAP_PHYDIAG, 0, ((void*)0)) != HAL_OK)
  return (0);


 if (! IEEE80211_IS_CHAN_DFS(chan))
  return (0);


 memset(&pe, '\0', sizeof(pe));
 if (! ath_hal_getdfsdefaultthresh(sc->sc_ah, &pe))
  return (0);


 sc->sc_dodfs = 1;


 pe.pe_enabled = 1;


 if (IEEE80211_IS_CHAN_HT40(chan))
  pe.pe_extchannel = 1;
 else
  pe.pe_extchannel = 0;

 ath_hal_enabledfs(sc->sc_ah, &pe);






 (void) ath_hal_setcapability(sc->sc_ah, HAL_CAP_DIVERSITY, 2, 0, ((void*)0));

 return (1);



}
