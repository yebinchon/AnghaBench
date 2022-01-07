
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int tty_softc (struct tty*) ;
 int xencons_tx_flush (int ,int) ;

__attribute__((used)) static void
xencons_shutdown(void *arg, int howto)
{
 struct tty *tp;

 tp = arg;

 xencons_tx_flush(tty_softc(tp), 1);
}
