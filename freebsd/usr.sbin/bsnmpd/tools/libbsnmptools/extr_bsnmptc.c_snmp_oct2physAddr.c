
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ SNMP_PHYSADDR_OCTETS ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static char *
snmp_oct2physAddr(uint32_t len, char *octets, char *buf)
{
 char *ptr;
 uint32_t i;

 if (len != SNMP_PHYSADDR_OCTETS || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 buf[0]= '\0';

 ptr = buf;
 ptr += sprintf(ptr, "%2.2x", octets[0]);
 for (i = 1; i < 6; i++)
  ptr += sprintf(ptr, ":%2.2x", octets[i]);

 return (buf);
}
