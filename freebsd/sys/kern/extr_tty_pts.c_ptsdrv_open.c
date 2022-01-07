
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct pts_softc {int pts_flags; } ;


 int PTS_FINISHED ;
 struct pts_softc* tty_softc (struct tty*) ;

__attribute__((used)) static int
ptsdrv_open(struct tty *tp)
{
 struct pts_softc *psc = tty_softc(tp);

 psc->pts_flags &= ~PTS_FINISHED;

 return (0);
}
