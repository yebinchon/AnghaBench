
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_ah; } ;
typedef int HAL_PHYERR_PARAM ;


 int ath_hal_getdfsthresh (int ,int *) ;

int
ath_dfs_get_thresholds(struct ath_softc *sc, HAL_PHYERR_PARAM *param)
{
 ath_hal_getdfsthresh(sc->sc_ah, param);
 return (1);
}
