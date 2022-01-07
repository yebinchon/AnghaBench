
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;
typedef int buf ;


 int BVMBURSTLEN ;
 int bvm_wcons (int ) ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
bvm_tty_outwakeup(struct tty *tp)
{
 int len, written;
 u_char buf[BVMBURSTLEN];

 for (;;) {
  len = ttydisc_getc(tp, buf, sizeof(buf));
  if (len == 0)
   break;

  written = 0;
  while (written < len)
   bvm_wcons(buf[written++]);
 }
}
