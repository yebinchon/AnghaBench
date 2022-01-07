
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_list {struct merge_list* next; } ;


 struct merge_list* merge_result ;
 int show_diff (struct merge_list*) ;
 int show_result_list (struct merge_list*) ;

__attribute__((used)) static void show_result(void)
{
 struct merge_list *walk;

 walk = merge_result;
 while (walk) {
  show_result_list(walk);
  show_diff(walk);
  walk = walk->next;
 }
}
