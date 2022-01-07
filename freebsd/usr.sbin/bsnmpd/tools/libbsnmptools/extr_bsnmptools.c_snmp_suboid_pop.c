
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_oid {int len; int* subs; } ;
typedef int int32_t ;
typedef int asn_subid_t ;



int32_t
snmp_suboid_pop(struct asn_oid *var)
{
 asn_subid_t suboid;

 if (var == ((void*)0))
  return (-1);

 if (var->len < 1)
  return (-1);

 suboid = var->subs[--(var->len)];
 var->subs[var->len] = 0;

 return (suboid);
}
