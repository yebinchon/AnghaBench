
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int GetLowerUpperIndex (int,int const*,int,int*,int*) ;

__attribute__((used)) static HAL_BOOL
ar5413FillVpdTable(uint32_t pdGainIdx, int16_t Pmin, int16_t Pmax,
     const int16_t *pwrList, const uint16_t *VpdList,
     uint16_t numIntercepts,
     uint16_t retVpdList[][64])
{
 uint16_t ii, jj, kk;
 int16_t currPwr = (int16_t)(2*Pmin);

 uint32_t idxL, idxR;

 ii = 0;
 jj = 0;

 if (numIntercepts < 2)
  return AH_FALSE;

 while (ii <= (uint16_t)(Pmax - Pmin)) {
  GetLowerUpperIndex(currPwr, (const uint16_t *) pwrList,
       numIntercepts, &(idxL), &(idxR));
  if (idxR < 1)
   idxR = 1;
  if (idxL == (uint32_t)(numIntercepts - 1))
   idxL = numIntercepts - 2;
  if (pwrList[idxL] == pwrList[idxR])
   kk = VpdList[idxL];
  else
   kk = (uint16_t)
    (((currPwr - pwrList[idxL])*VpdList[idxR]+
      (pwrList[idxR] - currPwr)*VpdList[idxL])/
     (pwrList[idxR] - pwrList[idxL]));
  retVpdList[pdGainIdx][ii] = kk;
  ii++;
  currPwr += 2;
 }

 return AH_TRUE;
}
