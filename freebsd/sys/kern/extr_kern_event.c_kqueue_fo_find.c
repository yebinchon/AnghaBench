
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filterops {int dummy; } ;
struct TYPE_2__ {struct filterops* for_fop; int for_refcnt; scalar_t__ for_nolock; } ;


 scalar_t__ EVFILT_SYSCOUNT ;
 int filterops_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct filterops null_filtops ;
 TYPE_1__* sysfilt_ops ;

__attribute__((used)) static struct filterops *
kqueue_fo_find(int filt)
{

 if (filt > 0 || filt + EVFILT_SYSCOUNT < 0)
  return ((void*)0);

 if (sysfilt_ops[~filt].for_nolock)
  return sysfilt_ops[~filt].for_fop;

 mtx_lock(&filterops_lock);
 sysfilt_ops[~filt].for_refcnt++;
 if (sysfilt_ops[~filt].for_fop == ((void*)0))
  sysfilt_ops[~filt].for_fop = &null_filtops;
 mtx_unlock(&filterops_lock);

 return sysfilt_ops[~filt].for_fop;
}
