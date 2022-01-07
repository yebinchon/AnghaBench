
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct setup_revision_opt {char* def; int revarg_opt; } ;
struct TYPE_2__ {scalar_t__ output_format; } ;
struct rev_info {int diff; TYPE_1__ diffopt; scalar_t__ simplify_history; } ;
typedef int opt ;


 scalar_t__ DIFF_FORMAT_RAW ;
 int REVARG_COMMITTISH ;
 int cmd_log_init (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ;
 int cmd_log_walk (struct rev_info*) ;
 int git_config (int ,int *) ;
 int git_log_config ;
 int init_log_defaults () ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int the_repository ;

int cmd_whatchanged(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 struct setup_revision_opt opt;

 init_log_defaults();
 git_config(git_log_config, ((void*)0));

 repo_init_revisions(the_repository, &rev, prefix);
 rev.diff = 1;
 rev.simplify_history = 0;
 memset(&opt, 0, sizeof(opt));
 opt.def = "HEAD";
 opt.revarg_opt = REVARG_COMMITTISH;
 cmd_log_init(argc, argv, prefix, &rev, &opt);
 if (!rev.diffopt.output_format)
  rev.diffopt.output_format = DIFF_FORMAT_RAW;
 return cmd_log_walk(&rev);
}
