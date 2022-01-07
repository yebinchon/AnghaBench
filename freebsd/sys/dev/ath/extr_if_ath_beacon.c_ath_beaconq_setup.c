
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ath_softc {scalar_t__ sc_isedma; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
typedef int qi ;
struct TYPE_4__ {int tqi_qflags; void* tqi_cwmax; void* tqi_cwmin; void* tqi_aifs; } ;
typedef TYPE_1__ HAL_TXQ_INFO ;


 int HAL_TXQ_TXDESCINT_ENABLE ;
 int HAL_TXQ_TXERRINT_ENABLE ;
 int HAL_TXQ_TXOKINT_ENABLE ;
 void* HAL_TXQ_USEDEFAULT ;
 int HAL_TX_QUEUE_BEACON ;
 int ath_hal_setuptxqueue (struct ath_hal*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int
ath_beaconq_setup(struct ath_softc *sc)
{
 struct ath_hal *ah = sc->sc_ah;
 HAL_TXQ_INFO qi;

 memset(&qi, 0, sizeof(qi));
 qi.tqi_aifs = HAL_TXQ_USEDEFAULT;
 qi.tqi_cwmin = HAL_TXQ_USEDEFAULT;
 qi.tqi_cwmax = HAL_TXQ_USEDEFAULT;

 qi.tqi_qflags = HAL_TXQ_TXDESCINT_ENABLE;
 if (sc->sc_isedma)
  qi.tqi_qflags |= HAL_TXQ_TXOKINT_ENABLE |
      HAL_TXQ_TXERRINT_ENABLE;

 return ath_hal_setuptxqueue(ah, HAL_TX_QUEUE_BEACON, &qi);
}
