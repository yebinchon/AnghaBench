
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;
typedef int register_t ;


 int MAMBOBURSTLEN ;
 int MAMBO_CONSOLE_WRITE ;
 int mambocall (int ,int *,int ,unsigned long) ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
mambotty_outwakeup(struct tty *tp)
{
 int len;
 u_char buf[MAMBOBURSTLEN];

 for (;;) {
  len = ttydisc_getc(tp, buf, sizeof buf);
  if (len == 0)
   break;
  mambocall(MAMBO_CONSOLE_WRITE, buf, (register_t)len, 1UL);
 }
}
