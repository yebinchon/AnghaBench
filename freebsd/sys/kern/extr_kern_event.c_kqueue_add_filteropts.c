
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filterops {int dummy; } ;
struct TYPE_2__ {scalar_t__ for_refcnt; struct filterops* for_fop; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ EVFILT_SYSCOUNT ;
 int filterops_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct filterops null_filtops ;
 int printf (char*,int,scalar_t__) ;
 TYPE_1__* sysfilt_ops ;

int
kqueue_add_filteropts(int filt, struct filterops *filtops)
{
 int error;

 error = 0;
 if (filt > 0 || filt + EVFILT_SYSCOUNT < 0) {
  printf(
"trying to add a filterop that is out of range: %d is beyond %d\n",
      ~filt, EVFILT_SYSCOUNT);
  return EINVAL;
 }
 mtx_lock(&filterops_lock);
 if (sysfilt_ops[~filt].for_fop != &null_filtops &&
     sysfilt_ops[~filt].for_fop != ((void*)0))
  error = EEXIST;
 else {
  sysfilt_ops[~filt].for_fop = filtops;
  sysfilt_ops[~filt].for_refcnt = 0;
 }
 mtx_unlock(&filterops_lock);

 return (error);
}
