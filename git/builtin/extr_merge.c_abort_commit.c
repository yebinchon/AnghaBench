
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int dummy; } ;


 char* _ (char*) ;
 int error (char*,char const*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int write_merge_state (struct commit_list*) ;

__attribute__((used)) static void abort_commit(struct commit_list *remoteheads, const char *err_msg)
{
 if (err_msg)
  error("%s", err_msg);
 fprintf(stderr,
  _("Not committing merge; use 'git commit' to complete the merge.\n"));
 write_merge_state(remoteheads);
 exit(1);
}
