
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int len; int * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int syntax; TYPE_2__ v; } ;
typedef int int32_t ;


 int LOG_ERR ;
 int SNMP_PHYSADDR_OCTETS ;
 int SNMP_SYNTAX_OCTETSTRING ;
 int errno ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int strerror (int ) ;
 int strtoul (char*,char**,int) ;
 int syslog (int ,char*,int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_physaddress(struct snmp_value *sv, char *val)
{
 char *endptr;
 int32_t i;
 uint32_t v;
 uint8_t phys_addr[SNMP_PHYSADDR_OCTETS];

 for (i = 0; i < 5; i++) {
  v = strtoul(val, &endptr, 16);
  if (v > 0xff) {
   warnx("Integer value %s not supported", val);
   return (-1);
  }
  if(*endptr != ':') {
   warnx("Failed reading octet - %s", val);
   return (-1);
  }
  phys_addr[i] = v;
  val = endptr + 1;
 }


 v = strtoul(val, &endptr, 16);
 if (v > 0xff) {
  warnx("Integer value %s not supported", val);
  return (-1);
 }
 phys_addr[5] = v;

 if ((sv->v.octetstring.octets = malloc(SNMP_PHYSADDR_OCTETS)) == ((void*)0)) {
  syslog(LOG_ERR, "malloc failed: %s", strerror(errno));
  return (-1);
 }

 sv->v.octetstring.len = SNMP_PHYSADDR_OCTETS;
 memcpy(sv->v.octetstring.octets, phys_addr, SNMP_PHYSADDR_OCTETS);
 sv->syntax = SNMP_SYNTAX_OCTETSTRING;
 return (1);
}
