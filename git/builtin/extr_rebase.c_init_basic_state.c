
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;
typedef int FILE ;


 int _ (char*) ;
 int delete_reflog (char*) ;
 int error_errno (int ,...) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int is_directory (int ) ;
 int merge_dir () ;
 scalar_t__ mkdir_in_gitdir (int ) ;
 int path_interactive () ;
 int write_basic_state (struct replay_opts*,char const*,struct commit*,char const*) ;

__attribute__((used)) static int init_basic_state(struct replay_opts *opts, const char *head_name,
       struct commit *onto, const char *orig_head)
{
 FILE *interactive;

 if (!is_directory(merge_dir()) && mkdir_in_gitdir(merge_dir()))
  return error_errno(_("could not create temporary %s"), merge_dir());

 delete_reflog("REBASE_HEAD");

 interactive = fopen(path_interactive(), "w");
 if (!interactive)
  return error_errno(_("could not mark as interactive"));
 fclose(interactive);

 return write_basic_state(opts, head_name, onto, orig_head);
}
