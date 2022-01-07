
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct terminal {struct tty* tm_tty; } ;


 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,void const*,size_t) ;

__attribute__((used)) static void
termteken_respond(void *softc, const void *buf, size_t len)
{
}
