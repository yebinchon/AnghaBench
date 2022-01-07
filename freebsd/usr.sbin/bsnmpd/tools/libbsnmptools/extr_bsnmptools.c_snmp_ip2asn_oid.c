
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct asn_oid {int dummy; } ;
typedef int int32_t ;
typedef int asn_subid_t ;


 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int * strchr (char*,char) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static char *
snmp_ip2asn_oid(char *str, struct asn_oid *oid)
{
 uint32_t v;
 int32_t i;
 char *endptr, *ptr;

 ptr = str;

 for (i = 0; i < 4; i++) {
  v = strtoul(ptr, &endptr, 10);
  if (v > 0xff)
   return (((void*)0));
  if (*endptr != '.' && strchr("],\0", *endptr) == ((void*)0) && i != 3)
   return (((void*)0));
  if (snmp_suboid_append(oid, (asn_subid_t) v) < 0)
   return (((void*)0));
  ptr = endptr + 1;
 }

 return (endptr);
}
