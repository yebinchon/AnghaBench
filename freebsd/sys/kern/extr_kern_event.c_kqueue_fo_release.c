
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ for_refcnt; scalar_t__ for_nolock; } ;


 scalar_t__ EVFILT_SYSCOUNT ;
 int KASSERT (int,char*) ;
 int filterops_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* sysfilt_ops ;

__attribute__((used)) static void
kqueue_fo_release(int filt)
{

 if (filt > 0 || filt + EVFILT_SYSCOUNT < 0)
  return;

 if (sysfilt_ops[~filt].for_nolock)
  return;

 mtx_lock(&filterops_lock);
 KASSERT(sysfilt_ops[~filt].for_refcnt > 0,
     ("filter object refcount not valid on release"));
 sysfilt_ops[~filt].for_refcnt--;
 mtx_unlock(&filterops_lock);
}
