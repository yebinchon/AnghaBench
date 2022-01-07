
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_6__ {char* fts_path; } ;
struct TYPE_5__ {int flags; size_t e_ppos; size_t e_pbnum; scalar_t__* e_len; scalar_t__ e_psize; size_t e_pnummax; scalar_t__ e_psizemax; scalar_t__ e_pbsize; int ** e_argv; int * e_orig; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ FTSENT ;


 int FTS_NOCHDIR ;
 int F_EXECDIR ;
 int F_EXECPLUS ;
 int F_NEEDOK ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int _exit (int) ;
 int brace_subst (int ,int **,char*,scalar_t__) ;
 int dotfd ;
 int err (int,char*) ;
 int execvp (int *,int **) ;
 int exitstatus ;
 int fchdir (int ) ;
 int fflush (int ) ;
 int fork () ;
 int free (int *) ;
 int ftsoptions ;
 int queryuser (int **) ;
 int stderr ;
 int stdout ;
 int * strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 int waitpid (int,int*,int ) ;
 int warn (char*,...) ;

int
f_exec(PLAN *plan, FTSENT *entry)
{
 int cnt;
 pid_t pid;
 int status;
 char *file;

 if (entry == ((void*)0) && plan->flags & F_EXECPLUS) {
  if (plan->e_ppos == plan->e_pbnum)
   return (1);
  plan->e_argv[plan->e_ppos] = ((void*)0);
  goto doexec;
 }


 if ((plan->flags & F_EXECDIR) && (file = strrchr(entry->fts_path, '/')))

  file++;
 else
  file = entry->fts_path;

 if (plan->flags & F_EXECPLUS) {
  if ((plan->e_argv[plan->e_ppos] = strdup(file)) == ((void*)0))
   err(1, ((void*)0));
  plan->e_len[plan->e_ppos] = strlen(file);
  plan->e_psize += plan->e_len[plan->e_ppos];
  if (++plan->e_ppos < plan->e_pnummax &&
      plan->e_psize < plan->e_psizemax)
   return (1);
  plan->e_argv[plan->e_ppos] = ((void*)0);
 } else {
  for (cnt = 0; plan->e_argv[cnt]; ++cnt)
   if (plan->e_len[cnt])
    brace_subst(plan->e_orig[cnt],
        &plan->e_argv[cnt], file,
        plan->e_len[cnt]);
 }

doexec: if ((plan->flags & F_NEEDOK) && !queryuser(plan->e_argv))
  return 0;


 fflush(stdout);
 fflush(stderr);

 switch (pid = fork()) {
 case -1:
  err(1, "fork");

 case 0:

  if (!(plan->flags & F_EXECDIR) &&
      !(ftsoptions & FTS_NOCHDIR) && fchdir(dotfd)) {
   warn("chdir");
   _exit(1);
  }
  execvp(plan->e_argv[0], plan->e_argv);
  warn("%s", plan->e_argv[0]);
  _exit(1);
 }
 if (plan->flags & F_EXECPLUS) {
  while (--plan->e_ppos >= plan->e_pbnum)
   free(plan->e_argv[plan->e_ppos]);
  plan->e_ppos = plan->e_pbnum;
  plan->e_psize = plan->e_pbsize;
 }
 pid = waitpid(pid, &status, 0);
 if (pid != -1 && WIFEXITED(status) && !WEXITSTATUS(status))
  return (1);
 if (plan->flags & F_EXECPLUS) {
  exitstatus = 1;
  return (1);
 }
 return (0);
}
