
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockbuf {int sb_flags; int sb_aiotask; } ;


 int SB_AIO ;
 int SB_AIO_RUNNING ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int soaio_enqueue (int *) ;
 int soref (struct socket*) ;

void
sowakeup_aio(struct socket *so, struct sockbuf *sb)
{

 SOCKBUF_LOCK_ASSERT(sb);
 sb->sb_flags &= ~SB_AIO;
 if (sb->sb_flags & SB_AIO_RUNNING)
  return;
 sb->sb_flags |= SB_AIO_RUNNING;
 soref(so);
 soaio_enqueue(&sb->sb_aiotask);
}
