
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int dummy; } ;
struct kinfo_proc {int ki_comm; int ki_pid; } ;


 int PS_OPT_NOHEADER ;
 char** procstat_getenvv (struct procstat*,struct kinfo_proc*,int ) ;
 int procstat_opts ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_list (char*) ;

void
procstat_env(struct procstat *procstat, struct kinfo_proc *kipp)
{
 int i;
 char **envs;

 if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
  xo_emit("{T:/%5s %-16s %-53s}\n", "PID", "COMM", "ENVIRONMENT");
 }

 envs = procstat_getenvv(procstat, kipp, 0);

 xo_emit("{k:process_id/%5d/%d} {:command/%-16s/%s}", kipp->ki_pid,
     kipp->ki_comm);

 if (envs == ((void*)0)) {
  xo_emit(" {d:env/-}\n");
  return;
 }

 xo_open_list("environment");
 for (i = 0; envs[i] != ((void*)0); i++)
  xo_emit(" {l:env/%s}", envs[i]);
 xo_close_list("environment");
 xo_emit("\n");
}
