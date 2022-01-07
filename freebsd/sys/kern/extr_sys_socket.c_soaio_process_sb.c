
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_vnet; } ;
struct sockbuf {int sb_flags; int sb_aiojobq; } ;
struct kaiocb {int dummy; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int SB_AIO ;
 int SB_AIO_RUNNING ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SOCK_LOCK (struct socket*) ;
 int TAILQ_EMPTY (int *) ;
 struct kaiocb* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aio_clear_cancel_function (struct kaiocb*) ;
 int list ;
 int soaio_process_job (struct socket*,struct sockbuf*,struct kaiocb*) ;
 scalar_t__ soaio_ready (struct socket*,struct sockbuf*) ;
 int sorele (struct socket*) ;

__attribute__((used)) static void
soaio_process_sb(struct socket *so, struct sockbuf *sb)
{
 struct kaiocb *job;

 CURVNET_SET(so->so_vnet);
 SOCKBUF_LOCK(sb);
 while (!TAILQ_EMPTY(&sb->sb_aiojobq) && soaio_ready(so, sb)) {
  job = TAILQ_FIRST(&sb->sb_aiojobq);
  TAILQ_REMOVE(&sb->sb_aiojobq, job, list);
  if (!aio_clear_cancel_function(job))
   continue;

  soaio_process_job(so, sb, job);
 }






 if (!TAILQ_EMPTY(&sb->sb_aiojobq))
  sb->sb_flags |= SB_AIO;
 sb->sb_flags &= ~SB_AIO_RUNNING;
 SOCKBUF_UNLOCK(sb);

 SOCK_LOCK(so);
 sorele(so);
 CURVNET_RESTORE();
}
