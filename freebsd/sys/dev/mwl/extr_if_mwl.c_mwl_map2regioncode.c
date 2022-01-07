
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int regdomain; int country; } ;


 int CTRY_FRANCE ;
 int CTRY_FRANCE2 ;
 int CTRY_SPAIN ;
 int DOMAIN_CODE_AUS ;
 int DOMAIN_CODE_DGT ;
 int DOMAIN_CODE_ETSI_131 ;
 int DOMAIN_CODE_FCC ;
 int DOMAIN_CODE_FRANCE ;
 int DOMAIN_CODE_IC ;
 int DOMAIN_CODE_MKK ;
 int DOMAIN_CODE_SPAIN ;
__attribute__((used)) static int
mwl_map2regioncode(const struct ieee80211_regdomain *rd)
{
 switch (rd->regdomain) {
 case 131:
 case 130:
  return DOMAIN_CODE_FCC;
 case 135:
  return DOMAIN_CODE_IC;
 case 134:
 case 133:
 case 132:
  if (rd->country == CTRY_SPAIN)
   return DOMAIN_CODE_SPAIN;
  if (rd->country == CTRY_FRANCE || rd->country == CTRY_FRANCE2)
   return DOMAIN_CODE_FRANCE;

  return DOMAIN_CODE_ETSI_131;
 case 129:
  return DOMAIN_CODE_MKK;
 case 128:
  return DOMAIN_CODE_DGT;
 case 138:
 case 137:
 case 136:
  return DOMAIN_CODE_AUS;
 }

 return DOMAIN_CODE_FCC;
}
