
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum WlanRegDomainCode { ____Placeholder_WlanRegDomainCode } WlanRegDomainCode ;


 int LOG_ERR ;
 int WlanRegDomainCode_apac ;
 int WlanRegDomainCode_apac2 ;
 int WlanRegDomainCode_apac3 ;
 int WlanRegDomainCode_ca ;
 int WlanRegDomainCode_debug ;
 int WlanRegDomainCode_etsi ;
 int WlanRegDomainCode_etsi2 ;
 int WlanRegDomainCode_etsi3 ;
 int WlanRegDomainCode_fcc ;
 int WlanRegDomainCode_fcc3 ;
 int WlanRegDomainCode_gz901 ;
 int WlanRegDomainCode_japan ;
 int WlanRegDomainCode_korea ;
 int WlanRegDomainCode_none ;
 int WlanRegDomainCode_row ;
 int WlanRegDomainCode_sr9 ;
 int WlanRegDomainCode_xr9 ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static enum WlanRegDomainCode
wlan_regdomain_to_snmp(int which)
{
 enum WlanRegDomainCode reg_domain;

 switch (which) {
 case 136:
  reg_domain = WlanRegDomainCode_fcc;
  break;
 case 141:
  reg_domain = WlanRegDomainCode_ca;
  break;
 case 139:
  reg_domain = WlanRegDomainCode_etsi;
  break;
 case 138:
  reg_domain = WlanRegDomainCode_etsi2;
  break;
 case 137:
  reg_domain = WlanRegDomainCode_etsi3;
  break;
 case 135:
  reg_domain = WlanRegDomainCode_fcc3;
  break;
 case 133:
  reg_domain = WlanRegDomainCode_japan;
  break;
 case 132:
  reg_domain = WlanRegDomainCode_korea;
  break;
 case 144:
  reg_domain = WlanRegDomainCode_apac;
  break;
 case 143:
  reg_domain = WlanRegDomainCode_apac2;
  break;
 case 142:
  reg_domain = WlanRegDomainCode_apac3;
  break;
 case 130:
  reg_domain = WlanRegDomainCode_row;
  break;
 case 131:
  reg_domain = WlanRegDomainCode_none;
  break;
 case 140:
  reg_domain = WlanRegDomainCode_debug;
  break;
 case 129:
  reg_domain = WlanRegDomainCode_sr9;
  break;
 case 128:
  reg_domain = WlanRegDomainCode_xr9;
  break;
 case 134:
  reg_domain = WlanRegDomainCode_gz901;
  break;
 case 0:
  reg_domain = WlanRegDomainCode_none;
  break;
 default:
  syslog(LOG_ERR, "unknown regdomain (0x%x) ", which);
  reg_domain = WlanRegDomainCode_none;
  break;
 }

 return (reg_domain);
}
