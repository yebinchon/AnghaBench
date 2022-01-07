
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_oid {int dummy; } ;
typedef scalar_t__ asn_subid_t ;


 scalar_t__ ASN_MAXID ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,scalar_t__) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int warnx (char*,scalar_t__) ;

char *
snmp_parse_suboid(char *str, struct asn_oid *oid)
{
 char *endptr;
 asn_subid_t suboid;

 if (*str == '.')
  str++;

 if (*str < '0' || *str > '9')
  return (str);

 do {
  suboid = strtoul(str, &endptr, 10);
  if ((asn_subid_t) suboid > ASN_MAXID) {
   warnx("Suboid %u > ASN_MAXID", suboid);
   return (((void*)0));
  }
  if (snmp_suboid_append(oid, suboid) < 0)
   return (((void*)0));
  str = endptr + 1;
 } while (*endptr == '.');

 return (endptr);
}
