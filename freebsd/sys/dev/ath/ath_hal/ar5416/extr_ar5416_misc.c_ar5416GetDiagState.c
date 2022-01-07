
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal_5416 {int ah_hangs; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int HAL_BB_HANGS ;


 int HAL_MAC_HANGS ;
 int ar5212GetDiagState (struct ath_hal*,int,void const*,int,void**,int*) ;
 int ar5416DetectBBHang (struct ath_hal*) ;
 int ar5416DetectMacHang (struct ath_hal*) ;
 int ath_hal_eepromDiag (struct ath_hal*,int,void const*,int,void**,int*) ;
 scalar_t__ ath_hal_getdiagstate (struct ath_hal*,int,void const*,int,void**,int*) ;

HAL_BOOL
ar5416GetDiagState(struct ath_hal *ah, int request,
 const void *args, uint32_t argsize,
 void **result, uint32_t *resultsize)
{
 struct ath_hal_5416 *ahp = AH5416(ah);
 int hangs;

 if (ath_hal_getdiagstate(ah, request, args, argsize, result, resultsize))
  return AH_TRUE;
 switch (request) {
 case 128:
  return ath_hal_eepromDiag(ah, request,
      args, argsize, result, resultsize);
 case 129:
  if (argsize != sizeof(int))
   return AH_FALSE;
  hangs = *(const int *) args;
  ahp->ah_hangs = 0;
  if (hangs & HAL_BB_HANGS)
   ahp->ah_hangs |= ar5416DetectBBHang(ah);

  if (ahp->ah_hangs == 0 && (hangs & HAL_MAC_HANGS))
   ahp->ah_hangs |= ar5416DetectMacHang(ah);
  *result = &ahp->ah_hangs;
  *resultsize = sizeof(ahp->ah_hangs);
  return AH_TRUE;
 }
 return ar5212GetDiagState(ah, request,
     args, argsize, result, resultsize);
}
