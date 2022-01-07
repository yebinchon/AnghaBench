
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_oid {scalar_t__ len; int * subs; } ;
typedef int int32_t ;
typedef int asn_subid_t ;


 scalar_t__ ASN_MAXOIDLEN ;
 int warnx (char*,scalar_t__) ;

int32_t
snmp_suboid_append(struct asn_oid *var, asn_subid_t suboid)
{
 if (var == ((void*)0))
  return (-1);

 if (var->len >= ASN_MAXOIDLEN) {
  warnx("Oid too long - %u", var->len);
  return (-1);
 }

 var->subs[var->len++] = suboid;

 return (1);
}
