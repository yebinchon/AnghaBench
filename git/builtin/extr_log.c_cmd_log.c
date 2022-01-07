
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setup_revision_opt {char* def; int tweak; int revarg_opt; } ;
struct rev_info {int always_show_header; } ;
typedef int opt ;


 int REVARG_COMMITTISH ;
 int cmd_log_init (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ;
 int cmd_log_walk (struct rev_info*) ;
 int git_config (int ,int *) ;
 int git_log_config ;
 int init_log_defaults () ;
 int log_setup_revisions_tweak ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int the_repository ;

int cmd_log(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 struct setup_revision_opt opt;

 init_log_defaults();
 git_config(git_log_config, ((void*)0));

 repo_init_revisions(the_repository, &rev, prefix);
 rev.always_show_header = 1;
 memset(&opt, 0, sizeof(opt));
 opt.def = "HEAD";
 opt.revarg_opt = REVARG_COMMITTISH;
 opt.tweak = log_setup_revisions_tweak;
 cmd_log_init(argc, argv, prefix, &rev, &opt);
 return cmd_log_walk(&rev);
}
