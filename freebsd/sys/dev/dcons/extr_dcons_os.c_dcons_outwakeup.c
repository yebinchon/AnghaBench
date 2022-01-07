
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct dcons_softc {int dummy; } ;


 int dcons_os_putc (struct dcons_softc*,char) ;
 struct dcons_softc* tty_softc (struct tty*) ;
 scalar_t__ ttydisc_getc (struct tty*,char*,int) ;

__attribute__((used)) static void
dcons_outwakeup(struct tty *tp)
{
 struct dcons_softc *dc;
 char ch;

 dc = tty_softc(tp);

 while (ttydisc_getc(tp, &ch, sizeof ch) != 0)
  dcons_os_putc(dc, ch);
}
