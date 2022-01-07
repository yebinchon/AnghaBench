
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kinfo_proc {scalar_t__ ki_jid; int ki_pid; } ;
struct TYPE_2__ {int tv_sec; } ;
struct cfjail {scalar_t__ jid; scalar_t__ nprocs; TYPE_1__ timeout; int * intparams; } ;
typedef int kvm_t ;


 int CLOCK_REALTIME ;
 int DEFAULT_STOP_TIMEOUT ;
 size_t IP_STOP_TIMEOUT ;
 int KERN_PROC_PROC ;
 int O_RDONLY ;
 int SIGTERM ;
 int add_proc (struct cfjail*,int) ;
 int clock_gettime (int ,TYPE_1__*) ;
 int int_param (int ,int*) ;
 int jail_note (struct cfjail*,char*) ;
 scalar_t__ kill (int,int ) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,int ,int*) ;
 int * kvm_open (int *,int *,int *,int ,int *) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
term_procs(struct cfjail *j)
{
 struct kinfo_proc *ki;
 int i, noted, pcnt, timeout;

 static kvm_t *kd;

 if (!int_param(j->intparams[IP_STOP_TIMEOUT], &timeout))
  timeout = DEFAULT_STOP_TIMEOUT;
 else if (timeout == 0)
  return 0;

 if (kd == ((void*)0)) {
  kd = kvm_open(((void*)0), ((void*)0), ((void*)0), O_RDONLY, ((void*)0));
  if (kd == ((void*)0))
   return 0;
 }

 ki = kvm_getprocs(kd, KERN_PROC_PROC, 0, &pcnt);
 if (ki == ((void*)0))
  return 0;
 noted = 0;
 for (i = 0; i < pcnt; i++)
  if (ki[i].ki_jid == j->jid &&
      kill(ki[i].ki_pid, SIGTERM) == 0) {
   (void)add_proc(j, ki[i].ki_pid);
   if (verbose > 0) {
    if (!noted) {
     noted = 1;
     jail_note(j, "sent SIGTERM to:");
    }
    printf(" %d", ki[i].ki_pid);
   }
  }
 if (noted)
  printf("\n");
 if (j->nprocs > 0) {
  clock_gettime(CLOCK_REALTIME, &j->timeout);
  j->timeout.tv_sec += timeout;
  return 1;
 }
 return 0;
}
