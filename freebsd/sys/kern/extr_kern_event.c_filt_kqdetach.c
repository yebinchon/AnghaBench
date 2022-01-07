
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct kqueue {TYPE_2__ kq_sel; } ;
struct knote {TYPE_1__* kn_fp; } ;
struct TYPE_3__ {struct kqueue* f_data; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
filt_kqdetach(struct knote *kn)
{
 struct kqueue *kq = kn->kn_fp->f_data;

 knlist_remove(&kq->kq_sel.si_note, kn, 0);
}
