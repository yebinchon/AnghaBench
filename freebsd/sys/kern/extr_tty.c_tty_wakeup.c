
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tty {int t_flags; TYPE_1__ t_inpoll; int t_inwait; TYPE_1__ t_outpoll; int t_outwait; int * t_session; int * t_sigio; } ;


 int FREAD ;
 int FWRITE ;
 int KNOTE_LOCKED (int *,int ) ;
 int SIGIO ;
 int TF_ASYNC ;
 int cv_broadcast (int *) ;
 int pgsigio (int **,int ,int ) ;
 int selwakeup (TYPE_1__*) ;

void
tty_wakeup(struct tty *tp, int flags)
{

 if (tp->t_flags & TF_ASYNC && tp->t_sigio != ((void*)0))
  pgsigio(&tp->t_sigio, SIGIO, (tp->t_session != ((void*)0)));

 if (flags & FWRITE) {
  cv_broadcast(&tp->t_outwait);
  selwakeup(&tp->t_outpoll);
  KNOTE_LOCKED(&tp->t_outpoll.si_note, 0);
 }
 if (flags & FREAD) {
  cv_broadcast(&tp->t_inwait);
  selwakeup(&tp->t_inpoll);
  KNOTE_LOCKED(&tp->t_inpoll.si_note, 0);
 }
}
