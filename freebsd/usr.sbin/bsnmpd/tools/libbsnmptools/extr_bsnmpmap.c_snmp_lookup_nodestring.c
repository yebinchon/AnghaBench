
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_nodelist; int * mappings; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 int snmp_lookuplist_string (int *,struct snmp_object*) ;

int32_t
snmp_lookup_nodestring(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s)
{
 if (snmptoolctx == ((void*)0) || snmptoolctx->mappings == ((void*)0) || s == ((void*)0))
  return (-1);

 return (snmp_lookuplist_string(&snmptoolctx->snmp_nodelist, s));
}
