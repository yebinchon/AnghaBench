
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct kaiocb* p_aio; } ;
struct knote {int kn_flags; int kn_data; TYPE_1__ kn_ptr; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_6__ {TYPE_2__ _aiocb_private; } ;
struct kaiocb {int jobflags; TYPE_3__ uaiocb; } ;


 int EV_EOF ;
 int KAIOCB_FINISHED ;

__attribute__((used)) static int
filt_aio(struct knote *kn, long hint)
{
 struct kaiocb *job = kn->kn_ptr.p_aio;

 kn->kn_data = job->uaiocb._aiocb_private.error;
 if (!(job->jobflags & KAIOCB_FINISHED))
  return (0);
 kn->kn_flags |= EV_EOF;
 return (1);
}
