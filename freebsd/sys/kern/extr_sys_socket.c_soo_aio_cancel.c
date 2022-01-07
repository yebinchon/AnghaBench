
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockbuf {int sb_flags; int sb_aiojobq; } ;
struct socket {struct sockbuf so_snd; struct sockbuf so_rcv; } ;
struct TYPE_4__ {int aio_lio_opcode; } ;
struct kaiocb {long aio_done; TYPE_2__ uaiocb; TYPE_1__* fd_file; } ;
struct TYPE_3__ {struct socket* f_data; } ;


 int LIO_READ ;
 int LIO_WRITE ;
 int MPASS (int) ;
 int SB_AIO ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_cancel (struct kaiocb*) ;
 int aio_cancel_cleared (struct kaiocb*) ;
 int aio_complete (struct kaiocb*,long,int ) ;
 int list ;

__attribute__((used)) static void
soo_aio_cancel(struct kaiocb *job)
{
 struct socket *so;
 struct sockbuf *sb;
 long done;
 int opcode;

 so = job->fd_file->f_data;
 opcode = job->uaiocb.aio_lio_opcode;
 if (opcode == LIO_READ)
  sb = &so->so_rcv;
 else {
  MPASS(opcode == LIO_WRITE);
  sb = &so->so_snd;
 }

 SOCKBUF_LOCK(sb);
 if (!aio_cancel_cleared(job))
  TAILQ_REMOVE(&sb->sb_aiojobq, job, list);
 if (TAILQ_EMPTY(&sb->sb_aiojobq))
  sb->sb_flags &= ~SB_AIO;
 SOCKBUF_UNLOCK(sb);

 done = job->aio_done;
 if (done != 0)
  aio_complete(job, done, 0);
 else
  aio_cancel(job);
}
