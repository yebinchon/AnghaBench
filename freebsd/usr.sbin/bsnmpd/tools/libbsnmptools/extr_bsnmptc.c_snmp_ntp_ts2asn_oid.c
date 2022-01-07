
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int* subs; scalar_t__ len; } ;
typedef int asn_subid_t ;


 scalar_t__ SNMP_NTP_TS_OCTETS ;
 int asn_append_oid (struct asn_oid*,struct asn_oid*) ;
 int errno ;
 int memset (struct asn_oid*,int ,int) ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int strtoul (char*,char**,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static char *
snmp_ntp_ts2asn_oid(char *str, struct asn_oid *oid)
{
 char *endptr, *ptr;
 uint32_t v, i, d;
 struct asn_oid suboid;
 int saved_errno;

 if (snmp_suboid_append(oid, (asn_subid_t) SNMP_NTP_TS_OCTETS) < 0)
  return (((void*)0));

 ptr = str;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0 || (v / 1000) > 9) {
  warnx("Integer value %s not supported", str);
  errno = saved_errno;
  return (((void*)0));
 } else
  errno = saved_errno;

 if (*endptr != '.') {
  warnx("Failed adding oid - %s", str);
  return (((void*)0));
 }

 memset(&suboid, 0, sizeof(struct asn_oid));
 suboid.len = SNMP_NTP_TS_OCTETS;

 for (i = 0, d = 1000; i < 4; i++) {
  suboid.subs[i] = v / d;
  v = v % d;
  d = d / 10;
 }

 ptr = endptr + 1;
 saved_errno = errno;
 errno = 0;
 v = strtoul(ptr, &endptr, 10);
 if (errno != 0 || (v / 1000) > 9) {
  warnx("Integer value %s not supported", str);
  errno = saved_errno;
  return (((void*)0));
 } else
  errno = saved_errno;

 for (i = 0, d = 1000; i < 4; i++) {
  suboid.subs[i + 4] = v / d;
  v = v % d;
  d = d / 10;
 }

 asn_append_oid(oid, &suboid);
 return (endptr);
}
