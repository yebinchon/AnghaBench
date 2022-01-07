
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_oidlist; scalar_t__ mappings; } ;
struct snmp_oid2str {int dummy; } ;
typedef int int32_t ;


 int snmp_mapping_insert (int *,struct snmp_oid2str*) ;

__attribute__((used)) static int32_t
snmp_oid_insert(struct snmp_toolinfo *snmptoolctx, struct snmp_oid2str *entry)
{
 if (snmptoolctx != ((void*)0) && snmptoolctx->mappings)
  return (snmp_mapping_insert(&snmptoolctx->snmp_oidlist,entry));

 return (-1);
}
