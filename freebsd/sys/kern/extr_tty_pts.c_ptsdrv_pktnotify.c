
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct pts_softc {int pts_pkt; } ;






 int ptsdrv_outwakeup (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;

__attribute__((used)) static void
ptsdrv_pktnotify(struct tty *tp, char event)
{
 struct pts_softc *psc = tty_softc(tp);





 switch (event) {
 case 128:
  psc->pts_pkt &= ~129;
  break;
 case 129:
  psc->pts_pkt &= ~128;
  break;
 case 130:
  psc->pts_pkt &= ~131;
  break;
 case 131:
  psc->pts_pkt &= ~130;
  break;
 }

 psc->pts_pkt |= event;
 ptsdrv_outwakeup(tp);
}
