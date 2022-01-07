
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_idxlist {int dummy; } ;
struct index {scalar_t__ tc; int snmp_enum; } ;


 scalar_t__ SNMP_TC_OWN ;
 struct index* STAILQ_FIRST (struct snmp_idxlist*) ;
 int STAILQ_INIT (struct snmp_idxlist*) ;
 int STAILQ_REMOVE_HEAD (struct snmp_idxlist*,int ) ;
 int enum_pairs_free (int ) ;
 int free (struct index*) ;
 int link ;

void
snmp_index_listfree(struct snmp_idxlist *headp)
{
 struct index *i;

 while ((i = STAILQ_FIRST(headp)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(headp, link);
  if (i->tc == SNMP_TC_OWN)
   enum_pairs_free(i->snmp_enum);
  free(i);
 }

 STAILQ_INIT(headp);
}
