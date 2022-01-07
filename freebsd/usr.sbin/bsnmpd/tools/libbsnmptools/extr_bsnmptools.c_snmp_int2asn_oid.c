
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_oid {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int asn_subid_t ;


 scalar_t__ errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 scalar_t__ strtol (char*,char**,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static char *
snmp_int2asn_oid(char *str, struct asn_oid *oid)
{
 char *endptr;
 int32_t v, saved_errno;

 saved_errno = errno;
 errno = 0;

 v = strtol(str, &endptr, 10);
 if (errno != 0) {
  warn("Integer value %s not supported", str);
  errno = saved_errno;
  return (((void*)0));
 }
 errno = saved_errno;

 if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
  return (((void*)0));

 return (endptr);
}
