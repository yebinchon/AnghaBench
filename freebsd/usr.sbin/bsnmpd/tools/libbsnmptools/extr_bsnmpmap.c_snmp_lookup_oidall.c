
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_tablelist; int snmp_nodelist; int snmp_cnt64list; int snmp_gaugelist; int snmp_cntlist; int snmp_ticklist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 scalar_t__ snmp_lookup_oidlist (int *,struct snmp_object*,char*) ;
 scalar_t__ snmp_lookup_tablelist (struct snmp_toolinfo*,int *,struct snmp_object*,char*) ;

int32_t
snmp_lookup_oidall(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s,
    char *oid)
{
 if (snmptoolctx == ((void*)0) || s == ((void*)0) || oid == ((void*)0))
  return (-1);

 if (snmp_lookup_oidlist(&snmptoolctx->snmp_intlist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_octlist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_oidlist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_iplist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_ticklist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_cntlist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_gaugelist, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_cnt64list, s, oid) > 0)
  return (1);
 if (snmp_lookup_oidlist(&snmptoolctx->snmp_nodelist, s, oid) > 0)
  return (1);
 if (snmp_lookup_tablelist(snmptoolctx, &snmptoolctx->snmp_tablelist,
     s, oid) > 0)
  return (1);

 return (-1);
}
