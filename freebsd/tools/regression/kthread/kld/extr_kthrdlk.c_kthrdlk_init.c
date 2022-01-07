
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int dummy; } ;


 int MTX_DEF ;
 scalar_t__ QUIT ;
 int kproc_kthread_add (int ,struct thread*,struct proc**,struct thread**,int ,int ,char*,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int panic (char*,int) ;
 int test_global_lock ;
 int test_thrcnt ;
 int thr_getsuspended ;
 int thr_resumer ;
 int thr_suspender ;

__attribute__((used)) static void
kthrdlk_init(void)
{
 struct proc *testproc;
 struct thread *newthr;
 int error;

 QUIT = 0;
 test_thrcnt = 3;
 mtx_init(&test_global_lock, "kthrdlk_lock", ((void*)0), MTX_DEF);
 testproc = ((void*)0);
 error = kproc_kthread_add(thr_getsuspended, ((void*)0), &testproc, &newthr,
     0, 0, "kthrdlk", "thr_getsuspended");
 if (error != 0)
  panic("cannot start thr_getsuspended error: %d\n", error);

 error = kproc_kthread_add(thr_resumer, newthr, &testproc, ((void*)0), 0, 0,
     "kthrdlk", "thr_resumer");
 if (error != 0)
  panic("cannot start thr_resumer error: %d\n", error);

 error = kproc_kthread_add(thr_suspender, newthr, &testproc, ((void*)0), 0, 0,
     "kthrdlk", "thr_suspender");
 if (error != 0)
  panic("cannot start thr_suspender error: %d\n", error);
}
