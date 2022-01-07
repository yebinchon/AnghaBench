
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knote {scalar_t__ kn_filter; int * kn_hook; int * kn_fop; } ;
struct cdev {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ sc_selp; } ;


 int EINVAL ;
 scalar_t__ EVFILT_READ ;
 int knlist_add (int *,struct knote*,int) ;
 int log_read_filterops ;
 TYPE_2__ logsoftc ;
 int msgbuf_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
logkqfilter(struct cdev *dev, struct knote *kn)
{

 if (kn->kn_filter != EVFILT_READ)
  return (EINVAL);

 kn->kn_fop = &log_read_filterops;
 kn->kn_hook = ((void*)0);

 mtx_lock(&msgbuf_lock);
 knlist_add(&logsoftc.sc_selp.si_note, kn, 1);
 mtx_unlock(&msgbuf_lock);
 return (0);
}
