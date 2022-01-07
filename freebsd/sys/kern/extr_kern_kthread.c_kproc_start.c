
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kproc_desc {int arg0; int global_procpp; scalar_t__ func; } ;


 int kproc_create (void (*) (void*),int *,int ,int ,int ,char*,int ) ;
 int panic (char*,int ,int) ;

void
kproc_start(const void *udata)
{
 const struct kproc_desc *kp = udata;
 int error;

 error = kproc_create((void (*)(void *))kp->func, ((void*)0),
      kp->global_procpp, 0, 0, "%s", kp->arg0);
 if (error)
  panic("kproc_start: %s: error %d", kp->arg0, error);
}
