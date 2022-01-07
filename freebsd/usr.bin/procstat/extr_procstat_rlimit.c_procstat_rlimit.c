
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {int rlim_max; int rlim_cur; } ;
struct procstat {int dummy; } ;
struct kinfo_proc {int ki_comm; int ki_pid; } ;
struct TYPE_2__ {int name; } ;


 int PS_OPT_NOHEADER ;
 int RLIM_INFINITY ;
 int RLIM_NLIMITS ;
 int humanize_rlimit (int,int ) ;
 int procstat_getrlimit (struct procstat*,struct kinfo_proc*,int,struct rlimit*) ;
 int procstat_opts ;
 TYPE_1__* rlimit_param ;
 int xo_close_container (int ) ;
 int xo_emit (char*,...) ;
 int xo_open_container (int ) ;

void
procstat_rlimit(struct procstat *prstat, struct kinfo_proc *kipp)
{
 struct rlimit rlimit;
 int i;

 if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
  xo_emit("{T:/%5s %-16s %-16s %16s %16s}\n",
      "PID", "COMM", "RLIMIT", "SOFT     ", "HARD     ");
 }
 xo_emit("{ek:process_id/%5d}{e:command/%-16s/%s}", kipp->ki_pid,
     kipp->ki_comm);
 for (i = 0; i < RLIM_NLIMITS; i++) {
  if (procstat_getrlimit(prstat, kipp, i, &rlimit) == -1)
   return;
  xo_emit("{dk:process_id/%5d} {d:command/%-16s} "
      "{d:rlimit_param/%-16s} ", kipp->ki_pid, kipp->ki_comm,
      rlimit_param[i].name);

  xo_open_container(rlimit_param[i].name);
  if (rlimit.rlim_cur == RLIM_INFINITY)
   xo_emit("{e:soft_limit/infinity}");
  else
   xo_emit("{e:soft_limit/%U}", rlimit.rlim_cur);

  if (rlimit.rlim_max == RLIM_INFINITY)
   xo_emit("{e:hard_limit/infinity}");
  else
   xo_emit("{e:hard_limit/%U}", rlimit.rlim_max);
  xo_close_container(rlimit_param[i].name);

  xo_emit("{d:rlim_cur/%16s} ",
      humanize_rlimit(i, rlimit.rlim_cur));
  xo_emit("{d:rlim_max/%16s}\n",
      humanize_rlimit(i, rlimit.rlim_max));
 }
}
