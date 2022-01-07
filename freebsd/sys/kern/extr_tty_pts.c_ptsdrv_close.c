
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct pts_softc {int pts_flags; } ;


 int PTS_FINISHED ;
 int ptsdrv_inwakeup (struct tty*) ;
 int ptsdrv_outwakeup (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;

__attribute__((used)) static void
ptsdrv_close(struct tty *tp)
{
 struct pts_softc *psc = tty_softc(tp);


 psc->pts_flags |= PTS_FINISHED;
 ptsdrv_outwakeup(tp);
 ptsdrv_inwakeup(tp);
}
