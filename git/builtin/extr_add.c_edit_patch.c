
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_3__ {int ignore_dirty_submodules; } ;
struct TYPE_4__ {int context; int close_file; int file; TYPE_1__ flags; scalar_t__ use_color; int output_format; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct child_process {int git_cmd; char const** argv; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int DIFF_FORMAT_PATCH ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _ (char*) ;
 int die (int ,...) ;
 int die_errno (int ,char*) ;
 int free (char*) ;
 int git_config (int ,int *) ;
 int git_diff_basic_config ;
 char* git_pathdup (char*) ;
 scalar_t__ launch_editor (char*,int *,int *) ;
 int open (char*,int,int) ;
 scalar_t__ read_cache () ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 scalar_t__ run_command (struct child_process*) ;
 scalar_t__ run_diff_files (struct rev_info*,int ) ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int the_repository ;
 int unlink (char*) ;
 int xfdopen (int,char*) ;

__attribute__((used)) static int edit_patch(int argc, const char **argv, const char *prefix)
{
 char *file = git_pathdup("ADD_EDIT.patch");
 const char *apply_argv[] = { "apply", "--recount", "--cached",
  ((void*)0), ((void*)0) };
 struct child_process child = CHILD_PROCESS_INIT;
 struct rev_info rev;
 int out;
 struct stat st;

 apply_argv[3] = file;

 git_config(git_diff_basic_config, ((void*)0));

 if (read_cache() < 0)
  die(_("Could not read the index"));

 repo_init_revisions(the_repository, &rev, prefix);
 rev.diffopt.context = 7;

 argc = setup_revisions(argc, argv, &rev, ((void*)0));
 rev.diffopt.output_format = DIFF_FORMAT_PATCH;
 rev.diffopt.use_color = 0;
 rev.diffopt.flags.ignore_dirty_submodules = 1;
 out = open(file, O_CREAT | O_WRONLY | O_TRUNC, 0666);
 if (out < 0)
  die(_("Could not open '%s' for writing."), file);
 rev.diffopt.file = xfdopen(out, "w");
 rev.diffopt.close_file = 1;
 if (run_diff_files(&rev, 0))
  die(_("Could not write patch"));

 if (launch_editor(file, ((void*)0), ((void*)0)))
  die(_("editing patch failed"));

 if (stat(file, &st))
  die_errno(_("Could not stat '%s'"), file);
 if (!st.st_size)
  die(_("Empty patch. Aborted."));

 child.git_cmd = 1;
 child.argv = apply_argv;
 if (run_command(&child))
  die(_("Could not apply '%s'"), file);

 unlink(file);
 free(file);
 return 0;
}
