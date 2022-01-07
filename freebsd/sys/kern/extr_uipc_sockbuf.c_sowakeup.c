
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockbuf {int sb_flags; int (* sb_upcall ) (struct socket*,int ,int ) ;int sb_upcallarg; TYPE_1__* sb_sel; int sb_acc; } ;
struct socket {int so_state; int * so_sigio; struct sockbuf so_rcv; } ;
struct TYPE_3__ {int si_note; } ;


 int KASSERT (int,char*) ;
 int KNOTE_LOCKED (int *,int ) ;
 int MA_NOTOWNED ;
 int M_NOWAIT ;
 int PSOCK ;
 int SB_AIO ;
 int SB_SEL ;
 int SB_WAIT ;
 int SEL_WAITING (TYPE_1__*) ;
 int SIGIO ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int SOCKBUF_MTX (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SO_RCV ;
 int SS_ASYNC ;
 int SU_ISCONNECTED ;
 int SU_OK ;
 int mtx_assert (int ,int ) ;
 int pgsigio (int **,int ,int ) ;
 int selwakeuppri (TYPE_1__*,int ) ;
 int soisconnected (struct socket*) ;
 int soupcall_clear (struct socket*,int ) ;
 int sowakeup_aio (struct socket*,struct sockbuf*) ;
 int stub1 (struct socket*,int ,int ) ;
 int wakeup (int *) ;

void
sowakeup(struct socket *so, struct sockbuf *sb)
{
 int ret;

 SOCKBUF_LOCK_ASSERT(sb);

 selwakeuppri(sb->sb_sel, PSOCK);
 if (!SEL_WAITING(sb->sb_sel))
  sb->sb_flags &= ~SB_SEL;
 if (sb->sb_flags & SB_WAIT) {
  sb->sb_flags &= ~SB_WAIT;
  wakeup(&sb->sb_acc);
 }
 KNOTE_LOCKED(&sb->sb_sel->si_note, 0);
 if (sb->sb_upcall != ((void*)0)) {
  ret = sb->sb_upcall(so, sb->sb_upcallarg, M_NOWAIT);
  if (ret == SU_ISCONNECTED) {
   KASSERT(sb == &so->so_rcv,
       ("SO_SND upcall returned SU_ISCONNECTED"));
   soupcall_clear(so, SO_RCV);
  }
 } else
  ret = SU_OK;
 if (sb->sb_flags & SB_AIO)
  sowakeup_aio(so, sb);
 SOCKBUF_UNLOCK(sb);
 if (ret == SU_ISCONNECTED)
  soisconnected(so);
 if ((so->so_state & SS_ASYNC) && so->so_sigio != ((void*)0))
  pgsigio(&so->so_sigio, SIGIO, 0);
 mtx_assert(SOCKBUF_MTX(sb), MA_NOTOWNED);
}
