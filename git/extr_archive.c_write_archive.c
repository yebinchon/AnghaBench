
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct archiver_args {struct repository* repo; } ;
struct archiver {int (* write_archive ) (struct archiver const*,struct archiver_args*) ;} ;
struct TYPE_2__ {int have_repository; } ;


 int git_config (int ,int *) ;
 int git_config_get_bool (char*,int *) ;
 int git_default_config ;
 int parse_archive_args (int,char const**,struct archiver const**,struct archiver_args*,char const*,int) ;
 int parse_pathspec_arg (char const**,struct archiver_args*) ;
 int parse_treeish_arg (char const**,struct archiver_args*,char const*,int) ;
 int remote_allow_unreachable ;
 int setup_git_directory () ;
 TYPE_1__* startup_info ;
 int stub1 (struct archiver const*,struct archiver_args*) ;

int write_archive(int argc, const char **argv, const char *prefix,
    struct repository *repo,
    const char *name_hint, int remote)
{
 const struct archiver *ar = ((void*)0);
 struct archiver_args args;

 git_config_get_bool("uploadarchive.allowunreachable", &remote_allow_unreachable);
 git_config(git_default_config, ((void*)0));

 args.repo = repo;
 argc = parse_archive_args(argc, argv, &ar, &args, name_hint, remote);
 if (!startup_info->have_repository) {





  setup_git_directory();
 }

 parse_treeish_arg(argv, &args, prefix, remote);
 parse_pathspec_arg(argv + 1, &args);

 return ar->write_archive(ar, &args);
}
