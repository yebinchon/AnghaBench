
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_3__ {int how; } ;
struct TYPE_4__ {TYPE_1__ suspended; } ;
struct vm_exit {TYPE_2__ u; } ;
typedef enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;


 int BSP ;
 int CPU_EMPTY (int *) ;




 int cpumask ;
 int exit (int) ;
 int fbsdrun_deletecpu (struct vmctx*,int) ;
 int fprintf (int ,char*,int) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int resetcpu_cond ;
 int resetcpu_mtx ;
 int stderr ;

__attribute__((used)) static int
vmexit_suspend(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{
 enum vm_suspend_how how;

 how = vmexit->u.suspended.how;

 fbsdrun_deletecpu(ctx, *pvcpu);

 if (*pvcpu != BSP) {
  pthread_mutex_lock(&resetcpu_mtx);
  pthread_cond_signal(&resetcpu_cond);
  pthread_mutex_unlock(&resetcpu_mtx);
  pthread_exit(((void*)0));
 }

 pthread_mutex_lock(&resetcpu_mtx);
 while (!CPU_EMPTY(&cpumask)) {
  pthread_cond_wait(&resetcpu_cond, &resetcpu_mtx);
 }
 pthread_mutex_unlock(&resetcpu_mtx);

 switch (how) {
 case 129:
  exit(0);
 case 130:
  exit(1);
 case 131:
  exit(2);
 case 128:
  exit(3);
 default:
  fprintf(stderr, "vmexit_suspend: invalid reason %d\n", how);
  exit(100);
 }
 return (0);
}
