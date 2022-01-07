
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int dummy; } ;
struct commit {int dummy; } ;


 char* prepare_index (int,char const**,char const*,struct commit const*,int) ;
 int rollback_index_files () ;
 int run_status (int ,char const*,char const*,int ,struct wt_status*) ;
 int stdout ;

__attribute__((used)) static int dry_run_commit(int argc, const char **argv, const char *prefix,
     const struct commit *current_head, struct wt_status *s)
{
 int committable;
 const char *index_file;

 index_file = prepare_index(argc, argv, prefix, current_head, 1);
 committable = run_status(stdout, index_file, prefix, 0, s);
 rollback_index_files();

 return committable ? 0 : 1;
}
