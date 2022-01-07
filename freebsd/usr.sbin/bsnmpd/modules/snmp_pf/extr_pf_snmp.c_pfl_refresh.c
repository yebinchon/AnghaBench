
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfl_entry {int dummy; } ;


 int TAILQ_EMPTY (int *) ;
 struct pfl_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pfl_entry*,int ) ;
 int free (struct pfl_entry*) ;
 int link ;
 scalar_t__ pf_tick ;
 int pfl_table ;
 int pfl_table_age ;
 scalar_t__ pfl_table_count ;
 scalar_t__ pfl_walk_rulesets (char*) ;
 scalar_t__ started ;
 scalar_t__ this_tick ;
 int time (int *) ;

__attribute__((used)) static int
pfl_refresh(void)
{
 struct pfl_entry *e;

 if (started && this_tick <= pf_tick)
  return (0);

 while (!TAILQ_EMPTY(&pfl_table)) {
  e = TAILQ_FIRST(&pfl_table);
  TAILQ_REMOVE(&pfl_table, e, link);
  free(e);
 }
 pfl_table_count = 0;

 if (pfl_walk_rulesets(""))
  goto err;

 pfl_table_age = time(((void*)0));
 pf_tick = this_tick;

 return (0);

err:
 while (!TAILQ_EMPTY(&pfl_table)) {
  e = TAILQ_FIRST(&pfl_table);
  TAILQ_REMOVE(&pfl_table, e, link);
  free(e);
 }
 pfl_table_count = 0;

 return (-1);
}
