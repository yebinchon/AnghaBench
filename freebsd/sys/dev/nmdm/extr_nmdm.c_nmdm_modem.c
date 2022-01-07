
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct nmdmpart {TYPE_1__* np_other; scalar_t__ np_dcd; } ;
struct TYPE_2__ {int np_dcd; int np_tty; } ;


 int SER_DCD ;
 int SER_DTR ;
 struct nmdmpart* tty_softc (struct tty*) ;
 int ttydisc_modem (int ,int) ;

__attribute__((used)) static int
nmdm_modem(struct tty *tp, int sigon, int sigoff)
{
 struct nmdmpart *np = tty_softc(tp);
 int i = 0;

 if (sigon || sigoff) {
  if (sigon & SER_DTR)
   np->np_other->np_dcd = 1;
  if (sigoff & SER_DTR)
   np->np_other->np_dcd = 0;

  ttydisc_modem(np->np_other->np_tty, np->np_other->np_dcd);

  return (0);
 } else {
  if (np->np_dcd)
   i |= SER_DCD;
  if (np->np_other->np_dcd)
   i |= SER_DTR;

  return (i);
 }
}
