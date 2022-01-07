
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knote {scalar_t__ kn_filter; int * kn_fop; } ;
struct cdev {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ sel; } ;


 int EINVAL ;
 scalar_t__ EVFILT_READ ;
 int devctl_rfiltops ;
 TYPE_2__ devsoftc ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
devkqfilter(struct cdev *dev, struct knote *kn)
{
 int error;

 if (kn->kn_filter == EVFILT_READ) {
  kn->kn_fop = &devctl_rfiltops;
  knlist_add(&devsoftc.sel.si_note, kn, 0);
  error = 0;
 } else
  error = EINVAL;
 return (error);
}
