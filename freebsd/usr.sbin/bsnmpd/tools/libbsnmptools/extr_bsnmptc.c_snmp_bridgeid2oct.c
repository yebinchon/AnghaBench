
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int asn_subid_t ;


 scalar_t__ SNMP_BRIDGEID_OCTETS ;
 int SNMP_MAX_BRIDGE_PRIORITY ;
 scalar_t__ errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int strtoul (char*,char**,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static char *
snmp_bridgeid2oct(char *str, struct asn_oid *oid)
{
 char *endptr, *ptr;
 uint32_t v, i;
 int32_t saved_errno;

 if (snmp_suboid_append(oid, (asn_subid_t) SNMP_BRIDGEID_OCTETS) < 0)
  return (((void*)0));

 ptr = str;

 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);

 if (v > SNMP_MAX_BRIDGE_PRIORITY || errno != 0 || *endptr != '.') {
  errno = saved_errno;
  warnx("Bad bridge priority value %d", v);
  return (((void*)0));
 }

 if (snmp_suboid_append(oid, (asn_subid_t) (v & 0xff00)) < 0)
  return (((void*)0));

 if (snmp_suboid_append(oid, (asn_subid_t) (v & 0xff)) < 0)
  return (((void*)0));

 ptr = endptr + 1;
 for (i = 0; i < 5; i++) {
  saved_errno = errno;
  errno = 0;
  v = strtoul(ptr, &endptr, 16);
  errno = saved_errno;
  if (v > 0xff) {
   warnx("Integer value %s not supported", str);
   return (((void*)0));
  }
  if (*endptr != ':') {
   warnx("Failed adding oid - %s",str);
   return (((void*)0));
  }
  if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
   return (((void*)0));
  ptr = endptr + 1;
 }


 saved_errno = errno;
 errno = 0;
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
