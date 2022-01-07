
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct rev_info {int dummy; } ;
struct object_array {scalar_t__ nr; } ;
struct commit {int object; } ;


 int add_object_array (int *,int *,struct object_array*) ;
 int handle_commit (struct commit*,struct rev_info*,struct string_list*) ;
 scalar_t__ has_unshown_parent (struct commit*) ;
 scalar_t__ object_array_pop (struct object_array*) ;

__attribute__((used)) static void handle_tail(struct object_array *commits, struct rev_info *revs,
   struct string_list *paths_of_changed_objects)
{
 struct commit *commit;
 while (commits->nr) {
  commit = (struct commit *)object_array_pop(commits);
  if (has_unshown_parent(commit)) {

   add_object_array(&commit->object, ((void*)0), commits);
   return;
  }
  handle_commit(commit, revs, paths_of_changed_objects);
 }
}
