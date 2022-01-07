
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct nmdmpart {struct tty* np_tty; struct nmdmpart* np_other; } ;


 int tty_lock (struct tty*) ;
 scalar_t__ tty_opened (struct tty*) ;
 int tty_rel_gone (struct tty*) ;
 struct nmdmpart* tty_softc (struct tty*) ;

__attribute__((used)) static void
nmdm_close(struct tty *tp)
{
 struct nmdmpart *np;
 struct nmdmpart *onp;
 struct tty *otp;

 np = tty_softc(tp);
 onp = np->np_other;
 otp = onp->np_tty;


 if (tty_opened(otp))
  return;


 tty_rel_gone(tp);


 tty_lock(tp);
 onp = np->np_other;
 if (onp == ((void*)0))
  return;
 otp = onp->np_tty;
 tty_rel_gone(otp);
 tty_lock(tp);
}
