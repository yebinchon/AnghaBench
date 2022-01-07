
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ SNMP_BRIDGEID_OCTETS ;
 scalar_t__ SNMP_MAX_BRIDGE_PRIORITY ;
 int sprintf (char*,char*,char) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static char *
snmp_oct2bridgeid(uint32_t len, char *octets, char *buf)
{
 char *ptr;
 uint32_t i, priority;

 if (len != SNMP_BRIDGEID_OCTETS || octets == ((void*)0) || buf == ((void*)0))
  return (((void*)0));

 buf[0]= '\0';
 ptr = buf;

 priority = octets[0] << 8;
 priority += octets[1];
 if (priority > SNMP_MAX_BRIDGE_PRIORITY) {
  warnx("Invalid bridge priority %d", priority);
  return (((void*)0));
 } else
  ptr += sprintf(ptr, "%d.", octets[0]);

 ptr += sprintf(ptr, "%2.2x", octets[2]);

 for (i = 1; i < 6; i++)
  ptr += sprintf(ptr, ":%2.2x", octets[i + 2]);

 return (buf);
}
