
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_enum_tc {int dummy; } ;
struct enum_type {int snmp_enum; struct enum_type* name; } ;


 struct enum_type* SLIST_FIRST (struct snmp_enum_tc*) ;
 int SLIST_REMOVE_HEAD (struct snmp_enum_tc*,int ) ;
 int enum_pairs_free (int ) ;
 int free (struct enum_type*) ;
 int link ;

__attribute__((used)) static void
snmp_enumtc_listfree(struct snmp_enum_tc *headp)
{
 struct enum_type *t;

 while ((t = SLIST_FIRST(headp)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(headp, link);

  if (t->name)
   free(t->name);
  enum_pairs_free(t->snmp_enum);
  free(t);
 }
}
