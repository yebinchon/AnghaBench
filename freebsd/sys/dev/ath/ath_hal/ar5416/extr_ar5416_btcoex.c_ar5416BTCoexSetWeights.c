
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_5416 {int ah_btCoexBTWeight; int ah_btCoexWLANWeight; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 void* AR5416_BT_WGHT ;
 void* AR5416_STOMP_ALL_FORCE_WLAN_WGHT ;
 void* AR5416_STOMP_ALL_WLAN_WGHT ;
 void* AR5416_STOMP_LOW_FORCE_WLAN_WGHT ;
 void* AR5416_STOMP_LOW_WLAN_WGHT ;
 void* AR5416_STOMP_NONE_WLAN_WGHT ;
 scalar_t__ AR_SREV_KIWI_10_OR_LATER (struct ath_hal*) ;
void
ar5416BTCoexSetWeights(struct ath_hal *ah, u_int32_t stompType)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 if (AR_SREV_KIWI_10_OR_LATER(ah)) {

  switch (stompType) {
  case 131:

  case 133:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_ALL_WLAN_WGHT;
   break;
  case 130:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_LOW_WLAN_WGHT;
   break;
  case 132:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight =
       AR5416_STOMP_ALL_FORCE_WLAN_WGHT;
   break;
  case 129:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight =
       AR5416_STOMP_LOW_FORCE_WLAN_WGHT;
   break;
  case 128:
  case 134:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_NONE_WLAN_WGHT;
   break;
  default:

   ahp->ah_btCoexBTWeight = stompType & 0xffff;
   ahp->ah_btCoexWLANWeight = stompType >> 16;
   break;
  }
 } else {
  switch (stompType) {
  case 131:

  case 133:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_ALL_WLAN_WGHT;
   break;
  case 130:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_LOW_WLAN_WGHT;
   break;
  case 132:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight =
       AR5416_STOMP_ALL_FORCE_WLAN_WGHT;
   break;
  case 129:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight =
       AR5416_STOMP_LOW_FORCE_WLAN_WGHT;
   break;
  case 128:
  case 134:
   ahp->ah_btCoexBTWeight = AR5416_BT_WGHT;
   ahp->ah_btCoexWLANWeight = AR5416_STOMP_NONE_WLAN_WGHT;
   break;
  default:

   ahp->ah_btCoexBTWeight = stompType & 0xffff;
   ahp->ah_btCoexWLANWeight = stompType >> 16;
   break;
  }
 }
}
