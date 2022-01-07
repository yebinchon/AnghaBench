
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int syntax; } ;
typedef int int32_t ;
 int snmp_cnt64_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_cnt_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_gauge_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_int_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_ip_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_oct_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_oid_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;
 int snmp_tick_insert (struct snmp_toolinfo*,struct snmp_oid2str*) ;

int32_t
snmp_leaf_insert(struct snmp_toolinfo *snmptoolctx, struct snmp_oid2str *entry)
{
 switch (entry->syntax) {
  case 132:
   return (snmp_int_insert(snmptoolctx, entry));
  case 130:
   return (snmp_oct_insert(snmptoolctx, entry));
  case 129:
   return (snmp_oid_insert(snmptoolctx, entry));
  case 131:
   return (snmp_ip_insert(snmptoolctx, entry));
  case 135:
   return (snmp_cnt_insert(snmptoolctx, entry));
  case 133:
   return (snmp_gauge_insert(snmptoolctx, entry));
  case 128:
   return (snmp_tick_insert(snmptoolctx, entry));
  case 134:
   return (snmp_cnt64_insert(snmptoolctx, entry));
  default:
   break;
 }

 return (-1);
}
