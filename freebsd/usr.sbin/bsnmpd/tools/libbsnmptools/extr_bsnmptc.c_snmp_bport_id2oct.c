
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int dummy; } ;
typedef int asn_subid_t ;


 scalar_t__ SNMP_BPORT_OCTETS ;
 int SNMP_MAX_BPORT_PRIORITY ;
 int errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int strtoul (char*,char**,int) ;
 int warnx (char*,int) ;

__attribute__((used)) static char *
snmp_bport_id2oct(char *str, struct asn_oid *oid)
{
 char *endptr, *ptr;
 uint32_t v;
 int saved_errno;

 if (snmp_suboid_append(oid, (asn_subid_t) SNMP_BPORT_OCTETS) < 0)
  return (((void*)0));

 ptr = str;

 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);

 if (v > SNMP_MAX_BPORT_PRIORITY || errno != 0 || *endptr != '.') {
  errno = saved_errno;
  warnx("Bad bridge port priority value %d", v);
  return (((void*)0));
 }

 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));

 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 16);
 errno = saved_errno;

 if (v > 0xff) {
  warnx("Bad port number - %d", v);
  return (((void*)0));
 }

 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));

 return (endptr);
}
