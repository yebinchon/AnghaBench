
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setup_revision_opt {char* def; } ;
struct rev_info {int verbose_header; int abbrev_commit; int use_terminator; int always_show_header; int commit_format; int reflog_info; } ;
typedef int opt ;


 int CMIT_FMT_ONELINE ;
 int cmd_log_init_defaults (struct rev_info*) ;
 int cmd_log_init_finish (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ;
 int cmd_log_walk (struct rev_info*) ;
 int git_config (int ,int *) ;
 int git_log_config ;
 int init_log_defaults () ;
 int init_reflog_walk (int *) ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int the_repository ;

int cmd_log_reflog(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 struct setup_revision_opt opt;

 init_log_defaults();
 git_config(git_log_config, ((void*)0));

 repo_init_revisions(the_repository, &rev, prefix);
 init_reflog_walk(&rev.reflog_info);
 rev.verbose_header = 1;
 memset(&opt, 0, sizeof(opt));
 opt.def = "HEAD";
 cmd_log_init_defaults(&rev);
 rev.abbrev_commit = 1;
 rev.commit_format = CMIT_FMT_ONELINE;
 rev.use_terminator = 1;
 rev.always_show_header = 1;
 cmd_log_init_finish(argc, argv, prefix, &rev, &opt);

 return cmd_log_walk(&rev);
}
