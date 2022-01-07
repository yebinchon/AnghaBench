
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int snmp_tclist; int * mappings; } ;
struct enum_type {int dummy; } ;


 int SLIST_INSERT_HEAD (int *,struct enum_type*,int ) ;
 int link ;

void
snmp_enumtc_insert(struct snmp_toolinfo *snmptoolctx, struct enum_type *entry)
{
 if (snmptoolctx == ((void*)0) || snmptoolctx->mappings == ((void*)0))
  return;

 SLIST_INSERT_HEAD(&snmptoolctx->snmp_tclist, entry, link);
}
