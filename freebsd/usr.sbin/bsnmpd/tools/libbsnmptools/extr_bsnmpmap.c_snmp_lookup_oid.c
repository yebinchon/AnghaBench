
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int snmp_nodelist; int snmp_cnt64list; int snmp_ticklist; int snmp_gaugelist; int snmp_cntlist; int snmp_iplist; int snmp_oidlist; int snmp_octlist; int snmp_intlist; } ;
struct TYPE_2__ {int syntax; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef int int32_t ;
 int snmp_lookup_oidlist (int *,struct snmp_object*,char*) ;
 int warnx (char*,int) ;

int32_t
snmp_lookup_oid(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s,
    char *oid)
{
 if (snmptoolctx == ((void*)0) || s == ((void*)0))
  return (-1);

 switch (s->val.syntax) {
  case 133:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_intlist,
       s, oid));
  case 130:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_octlist,
       s, oid));
  case 129:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_oidlist,
       s, oid));
  case 132:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_iplist,
       s, oid));
  case 136:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_cntlist,
       s, oid));
  case 134:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_gaugelist,
       s, oid));
  case 128:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_ticklist,
       s, oid));
  case 135:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_cnt64list,
       s, oid));
  case 131:
   return (snmp_lookup_oidlist(&snmptoolctx->snmp_nodelist,
       s, oid));
  default:
   warnx("Unknown syntax - %d", s->val.syntax);
   break;
 }

 return (-1);
}
