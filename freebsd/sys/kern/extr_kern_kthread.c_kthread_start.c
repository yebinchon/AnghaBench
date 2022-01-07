
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_desc {int arg0; int global_threadpp; scalar_t__ func; } ;


 int kthread_add (void (*) (void*),int *,int *,int ,int ,int ,char*,int ) ;
 int panic (char*,int ,int) ;

void
kthread_start(const void *udata)
{
 const struct kthread_desc *kp = udata;
 int error;

 error = kthread_add((void (*)(void *))kp->func, ((void*)0),
      ((void*)0), kp->global_threadpp, 0, 0, "%s", kp->arg0);
 if (error)
  panic("kthread_start: %s: error %d", kp->arg0, error);
}
