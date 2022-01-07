
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_2__ {struct commit_list* next; } ;


 TYPE_1__* commit_list_insert (struct commit*,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;
 scalar_t__ isspace (int ) ;
 int log_tree_commit (int *,struct commit*) ;
 int log_tree_opt ;
 struct commit* lookup_commit (int ,struct object_id*) ;
 int parse_oid_hex (char const*,struct object_id*,char const**) ;
 int the_repository ;

__attribute__((used)) static int stdin_diff_commit(struct commit *commit, const char *p)
{
 struct object_id oid;
 struct commit_list **pptr = ((void*)0);


 while (isspace(*p++) && !parse_oid_hex(p, &oid, &p)) {
  struct commit *parent = lookup_commit(the_repository, &oid);
  if (!pptr) {

   free_commit_list(commit->parents);
   commit->parents = ((void*)0);
   pptr = &(commit->parents);
  }
  if (parent) {
   pptr = &commit_list_insert(parent, pptr)->next;
  }
 }
 return log_tree_commit(&log_tree_opt, commit);
}
