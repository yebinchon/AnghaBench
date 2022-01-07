
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ SNMP_BPORT_OCTETS ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static char *
snmp_oct2bport_id(uint32_t len, char *octets, char *buf)
{
 char *ptr;

 if (len != SNMP_BPORT_OCTETS || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 buf[0]= '\0';
 ptr = buf;

 ptr += sprintf(ptr, "%d.", octets[0]);
 ptr += sprintf(ptr, "%d", octets[1]);

 return (buf);
}
