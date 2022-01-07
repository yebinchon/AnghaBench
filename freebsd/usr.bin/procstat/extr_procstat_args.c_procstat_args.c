
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int dummy; } ;
struct kinfo_proc {int ki_comm; int ki_pid; } ;


 int PS_OPT_NOHEADER ;
 char** procstat_getargv (struct procstat*,struct kinfo_proc*,int ) ;
 int procstat_opts ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_list (char*) ;

void
procstat_args(struct procstat *procstat, struct kinfo_proc *kipp)
{
 int i;
 char **args;

 if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
  xo_emit("{T:/%5s %-16s %-53s}\n", "PID", "COMM", "ARGS");
 }

 args = procstat_getargv(procstat, kipp, 0);

 xo_emit("{k:process_id/%5d/%d} {:command/%-16s/%s}", kipp->ki_pid,
     kipp->ki_comm);

 if (args == ((void*)0)) {
  xo_emit(" {d:args/-}\n");
  return;
 }

 xo_open_list("arguments");
 for (i = 0; args[i] != ((void*)0); i++)
  xo_emit(" {l:args/%s}", args[i]);
 xo_close_list("arguments");
 xo_emit("\n");
}
