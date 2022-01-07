
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockbuf {int sb_flags; int sb_aiojobq; } ;
struct socket {struct sockbuf so_snd; struct sockbuf so_rcv; TYPE_2__* so_proto; } ;
struct TYPE_6__ {int aio_lio_opcode; } ;
struct kaiocb {TYPE_3__ uaiocb; } ;
struct file {struct socket* f_data; } ;
struct TYPE_5__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_4__ {int (* pru_aio_queue ) (struct socket*,struct kaiocb*) ;} ;


 int EINVAL ;


 int SB_AIO ;
 int SB_AIO_RUNNING ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int TAILQ_INSERT_TAIL (int *,struct kaiocb*,int ) ;
 int aio_set_cancel_function (struct kaiocb*,int ) ;
 int list ;
 int panic (char*) ;
 scalar_t__ soaio_ready (struct socket*,struct sockbuf*) ;
 int soo_aio_cancel ;
 int sowakeup_aio (struct socket*,struct sockbuf*) ;
 int stub1 (struct socket*,struct kaiocb*) ;

__attribute__((used)) static int
soo_aio_queue(struct file *fp, struct kaiocb *job)
{
 struct socket *so;
 struct sockbuf *sb;
 int error;

 so = fp->f_data;
 error = (*so->so_proto->pr_usrreqs->pru_aio_queue)(so, job);
 if (error == 0)
  return (0);

 switch (job->uaiocb.aio_lio_opcode) {
 case 129:
  sb = &so->so_rcv;
  break;
 case 128:
  sb = &so->so_snd;
  break;
 default:
  return (EINVAL);
 }

 SOCKBUF_LOCK(sb);
 if (!aio_set_cancel_function(job, soo_aio_cancel))
  panic("new job was cancelled");
 TAILQ_INSERT_TAIL(&sb->sb_aiojobq, job, list);
 if (!(sb->sb_flags & SB_AIO_RUNNING)) {
  if (soaio_ready(so, sb))
   sowakeup_aio(so, sb);
  else
   sb->sb_flags |= SB_AIO;
 }
 SOCKBUF_UNLOCK(sb);
 return (0);
}
