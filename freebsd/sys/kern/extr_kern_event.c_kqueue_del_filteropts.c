
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ for_refcnt; int * for_fop; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ EVFILT_SYSCOUNT ;
 int filterops_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int null_filtops ;
 TYPE_1__* sysfilt_ops ;

int
kqueue_del_filteropts(int filt)
{
 int error;

 error = 0;
 if (filt > 0 || filt + EVFILT_SYSCOUNT < 0)
  return EINVAL;

 mtx_lock(&filterops_lock);
 if (sysfilt_ops[~filt].for_fop == &null_filtops ||
     sysfilt_ops[~filt].for_fop == ((void*)0))
  error = EINVAL;
 else if (sysfilt_ops[~filt].for_refcnt != 0)
  error = EBUSY;
 else {
  sysfilt_ops[~filt].for_fop = &null_filtops;
  sysfilt_ops[~filt].for_refcnt = 0;
 }
 mtx_unlock(&filterops_lock);

 return error;
}
