
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_level {int dummy; } ;


 struct sort_level* pop_ls_st () ;
 int run_sort_level_next (struct sort_level*) ;

__attribute__((used)) static void
run_sort_cycle_st(void)
{
 struct sort_level *slc;

 for (;;) {
  slc = pop_ls_st();
  if (slc == ((void*)0)) {
   break;
  }
  run_sort_level_next(slc);
 }
}
