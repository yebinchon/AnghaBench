
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int ah_analog5GhzRev; } ;
 int AR_RADIO_SREV_MAJOR ;

const char *
ath_hal_rf_name(struct ath_hal *ah)
{
 switch (ah->ah_analog5GhzRev & AR_RADIO_SREV_MAJOR) {
 case 0:
  return "5110";
 case 136:
 case 135:
  return "5111";
 case 145:
  return "2111";
 case 132:
 case 134:
 case 133:
  return "5112";
 case 142:
 case 144:
 case 143:
  return "2112";
 case 137:
  return "2413";
 case 129:
  return "5413";
 case 139:
  return "2316";
 case 138:
  return "2317";
 case 128:
  return "5424";

 case 130:
  return "5133";
 case 140:
  return "2133";
 case 131:
  return "5122";
 case 141:
  return "2122";
 }
 return "????";
}
