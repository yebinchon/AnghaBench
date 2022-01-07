
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int dummy; } ;
typedef int asn_subid_t ;


 scalar_t__ SNMP_PHYSADDR_OCTETS ;
 int errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int strtoul (char*,char**,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static char *
snmp_addr2asn_oid(char *str, struct asn_oid *oid)
{
 char *endptr, *ptr;
 uint32_t v, i;
 int saved_errno;

 if (snmp_suboid_append(oid, (asn_subid_t) SNMP_PHYSADDR_OCTETS) < 0)
  return (((void*)0));

 ptr = str;
 for (i = 0; i < 5; i++) {
  saved_errno = errno;
  v = strtoul(ptr, &endptr, 16);
  errno = saved_errno;
  if (v > 0xff) {
   warnx("Integer value %s not supported", str);
   return (((void*)0));
  }
  if (*endptr != ':') {
   warnx("Failed adding oid - %s", str);
   return (((void*)0));
  }
  if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
   return (((void*)0));
  ptr = endptr + 1;
 }


 saved_errno = errno;
 v = strtoul(ptr, &endptr, 16);
 errno = saved_errno;
 if (v > 0xff) {
  warnx("Integer value %s not supported", str);
  return (((void*)0));
 }
 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));

 return (endptr);
}
