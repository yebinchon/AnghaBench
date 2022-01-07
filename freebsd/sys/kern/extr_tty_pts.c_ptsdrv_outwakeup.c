
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct pts_softc {TYPE_1__ pts_outpoll; int pts_outwait; } ;


 int KNOTE_LOCKED (int *,int ) ;
 int cv_broadcast (int *) ;
 int selwakeup (TYPE_1__*) ;
 struct pts_softc* tty_softc (struct tty*) ;

__attribute__((used)) static void
ptsdrv_outwakeup(struct tty *tp)
{
 struct pts_softc *psc = tty_softc(tp);

 cv_broadcast(&psc->pts_outwait);
 selwakeup(&psc->pts_outpoll);
 KNOTE_LOCKED(&psc->pts_outpoll.si_note, 0);
}
