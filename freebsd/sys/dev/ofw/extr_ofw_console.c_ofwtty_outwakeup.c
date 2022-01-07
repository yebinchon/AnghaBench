
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;


 int OFBURSTLEN ;
 int OF_write (int ,int *,int) ;
 int stdout ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
ofwtty_outwakeup(struct tty *tp)
{
 int len;
 u_char buf[OFBURSTLEN];

 for (;;) {
  len = ttydisc_getc(tp, buf, sizeof buf);
  if (len == 0)
   break;
  OF_write(stdout, buf, len);
 }
}
