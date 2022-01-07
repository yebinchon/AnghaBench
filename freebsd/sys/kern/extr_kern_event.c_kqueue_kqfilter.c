
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct kqueue {TYPE_2__ kq_sel; } ;
struct knote {scalar_t__ kn_filter; int * kn_fop; int kn_status; TYPE_1__* kn_fp; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct kqueue* f_data; } ;


 int EINVAL ;
 scalar_t__ EVFILT_READ ;
 int KN_KQUEUE ;
 int knlist_add (int *,struct knote*,int ) ;
 int kqread_filtops ;

__attribute__((used)) static int
kqueue_kqfilter(struct file *fp, struct knote *kn)
{
 struct kqueue *kq = kn->kn_fp->f_data;

 if (kn->kn_filter != EVFILT_READ)
  return (EINVAL);

 kn->kn_status |= KN_KQUEUE;
 kn->kn_fop = &kqread_filtops;
 knlist_add(&kq->kq_sel.si_note, kn, 0);

 return (0);
}
