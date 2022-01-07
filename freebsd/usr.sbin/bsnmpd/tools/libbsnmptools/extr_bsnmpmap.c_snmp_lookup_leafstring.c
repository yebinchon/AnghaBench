
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int snmp_cnt64list; int snmp_ticklist; int snmp_gaugelist; int snmp_cntlist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; int * mappings; } ;
struct TYPE_2__ {int syntax; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef int int32_t ;
 int snmp_lookup_allstring (struct snmp_toolinfo*,struct snmp_object*) ;
 int snmp_lookup_leaf (int *,struct snmp_object*) ;
 int warnx (char*,int) ;

int32_t
snmp_lookup_leafstring(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s)
{
 if (snmptoolctx == ((void*)0) || snmptoolctx->mappings == ((void*)0) || s == ((void*)0))
  return (-1);

 switch (s->val.syntax) {
  case 134:
   return (snmp_lookup_leaf(&snmptoolctx->snmp_intlist, s));
  case 130:
   return (snmp_lookup_leaf(&snmptoolctx->snmp_octlist, s));
  case 129:
   return (snmp_lookup_leaf(&snmptoolctx->snmp_oidlist, s));
  case 133:
   return (snmp_lookup_leaf(&snmptoolctx->snmp_iplist, s));
  case 138:
   return (snmp_lookup_leaf(&snmptoolctx->snmp_cntlist, s));
  case 135:
   return (snmp_lookup_leaf(
       &snmptoolctx->snmp_gaugelist, s));
  case 128:
   return (snmp_lookup_leaf(
       &snmptoolctx->snmp_ticklist, s));
  case 137:
   return (snmp_lookup_leaf(
       &snmptoolctx->snmp_cnt64list, s));
  case 131:

  case 132:

  case 136:
   return (snmp_lookup_allstring(snmptoolctx, s));
  default:
   warnx("Unknown syntax - %d", s->val.syntax);
   break;
 }

 return (-1);
}
