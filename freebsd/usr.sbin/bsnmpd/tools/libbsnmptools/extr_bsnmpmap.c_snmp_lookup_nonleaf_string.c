
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_enumlist; int snmp_nodelist; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 scalar_t__ snmp_lookuplist_string (int *,struct snmp_object*) ;

int32_t
snmp_lookup_nonleaf_string(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *s)
{
 if (snmptoolctx == ((void*)0))
  return (-1);

 if (snmp_lookuplist_string(&snmptoolctx->snmp_nodelist, s) > 0)
  return (1);
 if (snmp_lookuplist_string(&snmptoolctx->snmp_enumlist, s) > 0)
  return (1);

 return (-1);
}
