
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_enumlist; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 int snmp_lookup_oidlist (int *,struct snmp_object*,char*) ;

int32_t
snmp_lookup_enumoid(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s,
    char *oid)
{
 if (snmptoolctx == ((void*)0) || s == ((void*)0))
  return (-1);

 return (snmp_lookup_oidlist(&snmptoolctx->snmp_enumlist, s, oid));
}
