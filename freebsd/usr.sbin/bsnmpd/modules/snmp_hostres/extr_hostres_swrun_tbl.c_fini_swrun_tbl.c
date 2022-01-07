
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {int dummy; } ;


 struct swrun_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct swrun_entry*,int ) ;
 int free (struct swrun_entry*) ;
 int link ;
 int swrun_tbl ;

void
fini_swrun_tbl(void)
{
 struct swrun_entry *n1;

 while ((n1 = TAILQ_FIRST(&swrun_tbl)) != ((void*)0)) {
  TAILQ_REMOVE(&swrun_tbl, n1, link);
  free(n1);
 }
}
