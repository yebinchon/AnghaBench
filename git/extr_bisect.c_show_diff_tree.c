
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int git_config (int ,int *) ;
 int git_diff_ui_config ;
 int log_tree_commit (struct rev_info*,struct commit*) ;
 int repo_init_revisions (struct repository*,struct rev_info*,char const*) ;
 int setup_revisions (scalar_t__,char const**,struct rev_info*,int *) ;

__attribute__((used)) static void show_diff_tree(struct repository *r,
      const char *prefix,
      struct commit *commit)
{
 const char *argv[] = {
  "diff-tree", "--pretty", "--stat", "--summary", "--cc", ((void*)0)
 };
 struct rev_info opt;

 git_config(git_diff_ui_config, ((void*)0));
 repo_init_revisions(r, &opt, prefix);

 setup_revisions(ARRAY_SIZE(argv) - 1, argv, &opt, ((void*)0));
 log_tree_commit(&opt, commit);
}
