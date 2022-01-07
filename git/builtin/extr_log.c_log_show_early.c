
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int close_file; int file; } ;
struct rev_info {int early_output; TYPE_1__ diffopt; int sort_order; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_6__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {TYPE_2__ it_value; } ;


 int ITIMER_REAL ;



 TYPE_3__ early_output_timer ;
 int estimate_commit_count (struct commit_list*) ;
 int fclose (int ) ;
 int log_tree_commit (struct rev_info*,struct commit*) ;
 int setitimer (int ,TYPE_3__*,int *) ;
 int show_early_header (struct rev_info*,char*,int) ;
 int simplify_commit (struct rev_info*,struct commit*) ;
 int sort_in_topological_order (struct commit_list**,int ) ;

__attribute__((used)) static void log_show_early(struct rev_info *revs, struct commit_list *list)
{
 int i = revs->early_output, close_file = revs->diffopt.close_file;
 int show_header = 1;

 revs->diffopt.close_file = 0;
 sort_in_topological_order(&list, revs->sort_order);
 while (list && i) {
  struct commit *commit = list->item;
  switch (simplify_commit(revs, commit)) {
  case 128:
   if (show_header) {
    int n = estimate_commit_count(list);
    show_early_header(revs, "incomplete", n);
    show_header = 0;
   }
   log_tree_commit(revs, commit);
   i--;
   break;
  case 129:
   break;
  case 130:
   if (close_file)
    fclose(revs->diffopt.file);
   return;
  }
  list = list->next;
 }


 if (!i) {
  if (close_file)
   fclose(revs->diffopt.file);
  return;
 }
 early_output_timer.it_value.tv_sec = 0;
 early_output_timer.it_value.tv_usec = 500000;
 setitimer(ITIMER_REAL, &early_output_timer, ((void*)0));
}
