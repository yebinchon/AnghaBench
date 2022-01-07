
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint64_t ;
struct asn_oid {int dummy; } ;
typedef int asn_subid_t ;


 int errno ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int strtoull (char*,char**,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static char *
snmp_bits2oct(char *str, struct asn_oid *oid)
{
 char *endptr;
 int i, size, bits, saved_errno;
 uint64_t v, mask = 0xFF00000000000000;

 saved_errno = errno;
 errno = 0;

 v = strtoull(str, &endptr, 16);
 if (errno != 0) {
  warn("Bad BITS value %s", str);
  errno = saved_errno;
  return (((void*)0));
 }

 bits = 8;

 for (size = sizeof(v); size > 0; size--) {
  if ((v & mask) != 0)
   break;
  mask = mask >> bits;
 }

 if (size == 0)
  size = 1;

 if (snmp_suboid_append(oid, (asn_subid_t) size) < 0)
  return (((void*)0));

 for (i = 0, bits = 0; i < size; i++, bits += 8)
  if (snmp_suboid_append(oid,
      (asn_subid_t)((v & mask) >> bits)) < 0)
   return (((void*)0));

 return (endptr);
}
