
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ SNMP_NTP_TS_OCTETS ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static char *
snmp_oct2ntp_ts(uint32_t len, char *octets, char *buf)
{
 char *ptr;
 uint32_t i;

 if (len != SNMP_NTP_TS_OCTETS || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 buf[0]= '\0';

 ptr = buf;
 i = octets[0] * 1000 + octets[1] * 100 + octets[2] * 10 + octets[3];
 ptr += sprintf(ptr, "%4.4d", i);
 i = octets[4] * 1000 + octets[5] * 100 + octets[6] * 10 + octets[7];
 ptr += sprintf(ptr, ".%4.4d", i);

 return (buf);
}
