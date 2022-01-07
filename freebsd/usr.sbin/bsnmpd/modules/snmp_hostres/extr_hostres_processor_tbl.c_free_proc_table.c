
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct processor_entry {int dummy; } ;


 struct processor_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct processor_entry*,int ) ;
 int assert (int) ;
 scalar_t__ detected_processor_count ;
 int free (struct processor_entry*) ;
 int link ;
 int processor_tbl ;

__attribute__((used)) static void
free_proc_table(void)
{
 struct processor_entry *n1;

 while ((n1 = TAILQ_FIRST(&processor_tbl)) != ((void*)0)) {
  TAILQ_REMOVE(&processor_tbl, n1, link);
  free(n1);
  detected_processor_count--;
 }

 assert(detected_processor_count == 0);
 detected_processor_count = 0;
}
