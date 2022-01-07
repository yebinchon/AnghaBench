
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int log_tree_commit (int *,struct commit*) ;
 int log_tree_opt ;
 struct commit* lookup_commit_reference (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int diff_tree_commit_oid(const struct object_id *oid)
{
 struct commit *commit = lookup_commit_reference(the_repository, oid);
 if (!commit)
  return -1;
 return log_tree_commit(&log_tree_opt, commit);
}
