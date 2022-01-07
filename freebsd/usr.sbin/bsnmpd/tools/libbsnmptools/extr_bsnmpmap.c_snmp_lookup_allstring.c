
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_nodelist; int snmp_enumlist; int snmp_cnt64list; int snmp_ticklist; int snmp_gaugelist; int snmp_cntlist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; int * mappings; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 scalar_t__ snmp_lookup_leaf (int *,struct snmp_object*) ;
 scalar_t__ snmp_lookuplist_string (int *,struct snmp_object*) ;

int32_t
snmp_lookup_allstring(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s)
{
 if (snmptoolctx == ((void*)0) || snmptoolctx->mappings == ((void*)0))
  return (-1);

 if (snmp_lookup_leaf(&snmptoolctx->snmp_intlist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_octlist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_oidlist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_iplist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_cntlist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_gaugelist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_ticklist, s) > 0)
  return (1);
 if (snmp_lookup_leaf(&snmptoolctx->snmp_cnt64list, s) > 0)
  return (1);
 if (snmp_lookuplist_string(&snmptoolctx->snmp_enumlist, s) > 0)
  return (1);
 if (snmp_lookuplist_string(&snmptoolctx->snmp_nodelist, s) > 0)
  return (1);

 return (-1);
}
