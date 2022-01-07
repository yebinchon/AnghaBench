
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kqueue {int kq_count; } ;
struct knote {int kn_data; TYPE_1__* kn_fp; } ;
struct TYPE_2__ {struct kqueue* f_data; } ;



__attribute__((used)) static int
filt_kqueue(struct knote *kn, long hint)
{
 struct kqueue *kq = kn->kn_fp->f_data;

 kn->kn_data = kq->kq_count;
 return (kn->kn_data > 0);
}
