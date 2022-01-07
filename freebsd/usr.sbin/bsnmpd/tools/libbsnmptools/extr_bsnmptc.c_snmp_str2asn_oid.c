
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct asn_oid {int dummy; } ;
typedef int asn_subid_t ;


 scalar_t__ ASN_MAXOIDLEN ;
 scalar_t__ snmp_suboid_append (struct asn_oid*,int ) ;
 int * strchr (char*,char) ;

__attribute__((used)) static char *
snmp_str2asn_oid(char *str, struct asn_oid *oid)
{
 uint32_t i, len = 0;






 for (len = 0; len < ASN_MAXOIDLEN; len++) {
  if (strchr(",]", *(str + len)) != ((void*)0))
   break;
 }

 if (len >= ASN_MAXOIDLEN)
  return (((void*)0));

 if (snmp_suboid_append(oid, (asn_subid_t) len) < 0)
  return (((void*)0));

 for (i = 0; i < len; i++)
  if (snmp_suboid_append(oid, (asn_subid_t) *(str + i)) < 0)
   return (((void*)0));

 return (str + len);
}
