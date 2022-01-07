
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int HALASSERT (int) ;
 int ath_ee_getLowerUpperIndex (scalar_t__,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__*) ;

HAL_BOOL
ath_ee_FillVpdTable(uint8_t pwrMin, uint8_t pwrMax, uint8_t *pPwrList,
                   uint8_t *pVpdList, uint16_t numIntercepts, uint8_t *pRetVpdList)
{
    uint16_t i, k;
    uint8_t currPwr = pwrMin;
    uint16_t idxL, idxR;

    HALASSERT(pwrMax > pwrMin);
    for (i = 0; i <= (pwrMax - pwrMin) / 2; i++) {
        ath_ee_getLowerUpperIndex(currPwr, pPwrList, numIntercepts,
                           &(idxL), &(idxR));
        if (idxR < 1)
            idxR = 1;
        if (idxL == numIntercepts - 1)
            idxL = (uint16_t)(numIntercepts - 2);
        if (pPwrList[idxL] == pPwrList[idxR])
            k = pVpdList[idxL];
        else
            k = (uint16_t)( ((currPwr - pPwrList[idxL]) * pVpdList[idxR] + (pPwrList[idxR] - currPwr) * pVpdList[idxL]) /
                  (pPwrList[idxR] - pPwrList[idxL]) );
        HALASSERT(k < 256);
        pRetVpdList[i] = (uint8_t)k;
        currPwr += 2;
    }

    return AH_TRUE;
}
