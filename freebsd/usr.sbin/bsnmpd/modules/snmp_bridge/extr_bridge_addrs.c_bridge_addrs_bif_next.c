
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {scalar_t__ sysindex; } ;


 struct tp_entry* TAILQ_NEXT (struct tp_entry*,int ) ;
 int tp_e ;

struct tp_entry *
bridge_addrs_bif_next(struct tp_entry *te)
{
 struct tp_entry *te_next;

 if ((te_next = TAILQ_NEXT(te, tp_e)) == ((void*)0) ||
     te_next->sysindex != te->sysindex)
  return (((void*)0));

 return (te_next);
}
