
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; int c_ispeed; int c_ospeed; } ;
struct tty {struct termios t_termios; } ;
struct nmdmpart {int np_rate; int np_credits; struct nmdmpart* np_other; int np_callout; struct tty* np_tty; } ;


 int CDSR_OFLOW ;
 int QS ;
 int bits_per_char (struct termios*) ;
 int callout_reset (int *,int,int ,struct nmdmpart*) ;
 int hz ;
 int imax (int ,int ) ;
 int imin (int ,int ) ;
 int nmdm_timeout ;
 struct nmdmpart* tty_softc (struct tty*) ;

__attribute__((used)) static int
nmdm_param(struct tty *tp, struct termios *t)
{
 struct nmdmpart *np = tty_softc(tp);
 struct tty *tp2;
 int bpc, rate, speed, i;

 tp2 = np->np_other->np_tty;

 if (!((t->c_cflag | tp2->t_termios.c_cflag) & CDSR_OFLOW)) {
  np->np_rate = 0;
  np->np_other->np_rate = 0;
  return (0);
 }
 bpc = imax(bits_per_char(t), bits_per_char(&tp2->t_termios));

 for (i = 0; i < 2; i++) {

  speed = imin(tp2->t_termios.c_ospeed, t->c_ispeed);
  if (speed == 0) {
   np->np_rate = 0;
   np->np_other->np_rate = 0;
   return (0);
  }

  speed <<= QS;
  speed /= bpc;
  rate = (hz << QS) / speed;
  if (rate == 0)
   rate = 1;

  speed *= rate;
  speed /= hz;

  np->np_credits = speed;
  np->np_rate = rate;
  callout_reset(&np->np_callout, rate, nmdm_timeout, np);





  np = np->np_other;
  t = &tp2->t_termios;
  tp2 = tp;
 }

 return (0);
}
