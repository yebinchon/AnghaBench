
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ath_softc {int sc_ah; } ;
struct TYPE_4__ {scalar_t__ pe_enabled; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int ath_hal_enabledfs (int ,TYPE_1__*) ;
 int ath_hal_getdfsthresh (int ,TYPE_1__*) ;

int
ath_dfs_radar_disable(struct ath_softc *sc)
{

 HAL_PHYERR_PARAM pe;

 (void) ath_hal_getdfsthresh(sc->sc_ah, &pe);
 pe.pe_enabled = 0;
 (void) ath_hal_enabledfs(sc->sc_ah, &pe);
 return (0);



}
