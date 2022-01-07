
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tty {int t_mtxobj; int * t_mtx; int t_outserwait; int t_dcdwait; int t_bgwait; int t_outwait; int t_inwait; TYPE_1__ t_outpoll; TYPE_1__ t_inpoll; int t_outq; int t_inq; } ;


 int M_TTY ;
 int cv_destroy (int *) ;
 int free (struct tty*,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_1__*) ;
 int ttydevsw_free (struct tty*) ;
 int ttyinq_free (int *) ;
 int ttyoutq_free (int *) ;

__attribute__((used)) static void
tty_dealloc(void *arg)
{
 struct tty *tp = arg;
 ttyinq_free(&tp->t_inq);
 ttyoutq_free(&tp->t_outq);
 seldrain(&tp->t_inpoll);
 seldrain(&tp->t_outpoll);
 knlist_destroy(&tp->t_inpoll.si_note);
 knlist_destroy(&tp->t_outpoll.si_note);

 cv_destroy(&tp->t_inwait);
 cv_destroy(&tp->t_outwait);
 cv_destroy(&tp->t_bgwait);
 cv_destroy(&tp->t_dcdwait);
 cv_destroy(&tp->t_outserwait);

 if (tp->t_mtx == &tp->t_mtxobj)
  mtx_destroy(&tp->t_mtxobj);
 ttydevsw_free(tp);
 free(tp, M_TTY);
}
