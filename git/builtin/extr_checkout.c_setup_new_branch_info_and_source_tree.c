
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct object_id {int dummy; } ;
struct checkout_opts {struct tree* source_tree; } ;
struct branch_info {char const* name; int commit; int * path; } ;


 int check_refname_format (int *,int ) ;
 struct tree* get_commit_tree (int ) ;
 int lookup_commit_reference_gently (int ,struct object_id*,int) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 int parse_commit_or_die (int ) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 int read_ref (int *,struct object_id*) ;
 int setup_branch_path (struct branch_info*) ;
 int the_repository ;

__attribute__((used)) static void setup_new_branch_info_and_source_tree(
 struct branch_info *new_branch_info,
 struct checkout_opts *opts,
 struct object_id *rev,
 const char *arg)
{
 struct tree **source_tree = &opts->source_tree;
 struct object_id branch_rev;

 new_branch_info->name = arg;
 setup_branch_path(new_branch_info);

 if (!check_refname_format(new_branch_info->path, 0) &&
     !read_ref(new_branch_info->path, &branch_rev))
  oidcpy(rev, &branch_rev);
 else
  new_branch_info->path = ((void*)0);

 new_branch_info->commit = lookup_commit_reference_gently(the_repository, rev, 1);
 if (!new_branch_info->commit) {

  *source_tree = parse_tree_indirect(rev);
 } else {
  parse_commit_or_die(new_branch_info->commit);
  *source_tree = get_commit_tree(new_branch_info->commit);
 }
}
