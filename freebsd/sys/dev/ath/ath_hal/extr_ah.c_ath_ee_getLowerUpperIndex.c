
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int HALASSERT (int ) ;

HAL_BOOL
ath_ee_getLowerUpperIndex(uint8_t target, uint8_t *pList, uint16_t listSize,
                   uint16_t *indexL, uint16_t *indexR)
{
    uint16_t i;




    if (target <= pList[0]) {
        *indexL = *indexR = 0;
        return AH_TRUE;
    }
    if (target >= pList[listSize-1]) {
        *indexL = *indexR = (uint16_t)(listSize - 1);
        return AH_TRUE;
    }


    for (i = 0; i < listSize - 1; i++) {




        if (pList[i] == target) {
            *indexL = *indexR = i;
            return AH_TRUE;
        }




        if (target < pList[i + 1]) {
            *indexL = i;
            *indexR = (uint16_t)(i + 1);
            return AH_FALSE;
        }
    }
    HALASSERT(0);
    *indexL = *indexR = 0;
    return AH_FALSE;
}
