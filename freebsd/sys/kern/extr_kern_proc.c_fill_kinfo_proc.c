
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kinfo_proc {int dummy; } ;


 int * FIRST_THREAD_IN_PROC (struct proc*) ;
 int MPASS (int ) ;
 int fill_kinfo_aggregate (struct proc*,struct kinfo_proc*) ;
 int fill_kinfo_proc_only (struct proc*,struct kinfo_proc*) ;
 int fill_kinfo_thread (int *,struct kinfo_proc*,int ) ;

void
fill_kinfo_proc(struct proc *p, struct kinfo_proc *kp)
{

 MPASS(FIRST_THREAD_IN_PROC(p) != ((void*)0));

 fill_kinfo_proc_only(p, kp);
 fill_kinfo_thread(FIRST_THREAD_IN_PROC(p), kp, 0);
 fill_kinfo_aggregate(p, kp);
}
