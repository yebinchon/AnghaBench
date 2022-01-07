
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;


 int can_all_from_reach (struct commit_list*,struct commit_list*,int ) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;
 scalar_t__ generation_numbers_enabled (int ) ;
 scalar_t__ in_merge_bases (struct commit*,struct commit*) ;
 int the_repository ;

int is_descendant_of(struct commit *commit, struct commit_list *with_commit)
{
 if (!with_commit)
  return 1;

 if (generation_numbers_enabled(the_repository)) {
  struct commit_list *from_list = ((void*)0);
  int result;
  commit_list_insert(commit, &from_list);
  result = can_all_from_reach(from_list, with_commit, 0);
  free_commit_list(from_list);
  return result;
 } else {
  while (with_commit) {
   struct commit *other;

   other = with_commit->item;
   with_commit = with_commit->next;
   if (in_merge_bases(other, commit))
    return 1;
  }
  return 0;
 }
}
