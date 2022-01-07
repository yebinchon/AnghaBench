
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int ah_macVersion; int ah_macRev; } ;
struct TYPE_2__ {int ah_ispcie; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;


 int AR_SREV_REVISION_AR9580_10 ;
const char *
ath_hal_mac_name(struct ath_hal *ah)
{
 switch (ah->ah_macVersion) {
 case 144:
 case 141:
  return "AR5210";
 case 140:
 case 139:
  return "AR5211";
 case 135:
  return "AR5212";
 case 142:
  return "AR2413";
 case 145:
  return "AR5424";
 case 143:
  return "AR5413";
 case 146:
  return "AR2415";
 case 152:
  return "AR2425";
 case 153:
  return "AR2417";
 case 130:
  return "AR5416";
 case 129:
  return "AR5418";
 case 134:
  return "AR9130";
 case 128:
  return "AR9160";
 case 131:
  if (AH_PRIVATE(ah)->ah_ispcie)
   return "AR9280";
  return "AR9220";
 case 133:
  return "AR9285";
 case 132:
  if (AH_PRIVATE(ah)->ah_ispcie)
   return "AR9287";
  return "AR9227";
 case 149:
  if (ah->ah_macRev >= AR_SREV_REVISION_AR9580_10)
   return "AR9580";
  return "AR9380";
 case 148:
  return "AR9460";
 case 151:
  return "AR9330";
 case 150:
  return "AR9340";
 case 137:
  return "QCA9550";
 case 147:
  return "AR9485";
 case 136:
  return "QCA9565";
 case 138:
  return "QCA9530";
 }
 return "????";
}
