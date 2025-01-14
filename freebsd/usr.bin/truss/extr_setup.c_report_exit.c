
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trussinfo {int outfile; struct threadinfo* curthread; } ;
struct threadinfo {int after; } ;
struct TYPE_3__ {scalar_t__ si_code; int si_status; } ;
typedef TYPE_1__ siginfo_t ;


 scalar_t__ CLD_DUMPED ;
 scalar_t__ CLD_EXITED ;
 int CLOCK_REALTIME ;
 int clock_gettime (int ,int *) ;
 int fprintf (int ,char*,int,...) ;
 int print_line_prefix (struct trussinfo*) ;

__attribute__((used)) static void
report_exit(struct trussinfo *info, siginfo_t *si)
{
 struct threadinfo *t;

 t = info->curthread;
 clock_gettime(CLOCK_REALTIME, &t->after);
 print_line_prefix(info);
 if (si->si_code == CLD_EXITED)
  fprintf(info->outfile, "process exit, rval = %u\n",
      si->si_status);
 else
  fprintf(info->outfile, "process killed, signal = %u%s\n",
      si->si_status, si->si_code == CLD_DUMPED ?
      " (core dumped)" : "");
}
