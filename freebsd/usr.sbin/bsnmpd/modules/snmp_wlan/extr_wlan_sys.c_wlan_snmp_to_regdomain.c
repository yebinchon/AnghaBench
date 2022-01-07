
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum WlanRegDomainCode { ____Placeholder_WlanRegDomainCode } WlanRegDomainCode ;


 int LOG_ERR ;
 int SKU_APAC ;
 int SKU_APAC2 ;
 int SKU_APAC3 ;
 int SKU_CA ;
 int SKU_DEBUG ;
 int SKU_ETSI ;
 int SKU_ETSI2 ;
 int SKU_ETSI3 ;
 int SKU_FCC ;
 int SKU_FCC3 ;
 int SKU_GZ901 ;
 int SKU_JAPAN ;
 int SKU_KOREA ;
 int SKU_NONE ;
 int SKU_ROW ;
 int SKU_SR9 ;
 int SKU_XR9 ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static int
wlan_snmp_to_regdomain(enum WlanRegDomainCode regdomain)
{
 int which;

 switch (regdomain) {
 case 136:
  which = SKU_FCC;
  break;
 case 141:
  which = SKU_CA;
  break;
 case 139:
  which = SKU_ETSI;
  break;
 case 138:
  which = SKU_ETSI2;
  break;
 case 137:
  which = SKU_ETSI3;
  break;
 case 135:
  which = SKU_FCC3;
  break;
 case 133:
  which = SKU_JAPAN;
  break;
 case 132:
  which = SKU_KOREA;
  break;
 case 144:
  which = SKU_APAC;
  break;
 case 143:
  which = SKU_APAC2;
  break;
 case 142:
  which = SKU_APAC3;
  break;
 case 130:
  which = SKU_ROW;
  break;
 case 131:
  which = SKU_NONE;
  break;
 case 140:
  which = SKU_DEBUG;
  break;
 case 129:
  which = SKU_SR9;
  break;
 case 128:
  which = SKU_XR9;
  break;
 case 134:
  which = SKU_GZ901;
  break;
 default:
  syslog(LOG_ERR, "unknown snmp regdomain (0x%x) ", regdomain);
  which = SKU_NONE;
  break;
 }

 return (which);
}
