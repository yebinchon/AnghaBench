
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_oid2str {scalar_t__ tc; int snmp_enum; struct snmp_oid2str* string; } ;
struct snmp_mapping {int dummy; } ;


 struct snmp_oid2str* SLIST_FIRST (struct snmp_mapping*) ;
 int SLIST_INIT (struct snmp_mapping*) ;
 int SLIST_REMOVE_HEAD (struct snmp_mapping*,int ) ;
 scalar_t__ SNMP_TC_OWN ;
 int enum_pairs_free (int ) ;
 int free (struct snmp_oid2str*) ;
 int link ;

__attribute__((used)) static void
snmp_mapping_listfree(struct snmp_mapping *headp)
{
 struct snmp_oid2str *p;

 while ((p = SLIST_FIRST(headp)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(headp, link);

  if (p->string)
   free(p->string);

  if (p->tc == SNMP_TC_OWN)
   enum_pairs_free(p->snmp_enum);
  free(p);
 }

 SLIST_INIT(headp);
}
