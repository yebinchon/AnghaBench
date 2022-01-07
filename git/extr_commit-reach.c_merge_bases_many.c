
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int STALE ;
 struct commit_list* commit_list_insert (struct commit*,struct commit_list**) ;
 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 struct commit_list* paint_down_to_common (struct repository*,struct commit*,int,struct commit**,int ) ;
 struct commit* pop_commit (struct commit_list**) ;
 scalar_t__ repo_parse_commit (struct repository*,struct commit*) ;

__attribute__((used)) static struct commit_list *merge_bases_many(struct repository *r,
         struct commit *one, int n,
         struct commit **twos)
{
 struct commit_list *list = ((void*)0);
 struct commit_list *result = ((void*)0);
 int i;

 for (i = 0; i < n; i++) {
  if (one == twos[i])




   return commit_list_insert(one, &result);
 }

 if (repo_parse_commit(r, one))
  return ((void*)0);
 for (i = 0; i < n; i++) {
  if (repo_parse_commit(r, twos[i]))
   return ((void*)0);
 }

 list = paint_down_to_common(r, one, n, twos, 0);

 while (list) {
  struct commit *commit = pop_commit(&list);
  if (!(commit->object.flags & STALE))
   commit_list_insert_by_date(commit, &result);
 }
 return result;
}
