
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;


 int CFEBURSTLEN ;
 int cfe_write (int ,int *,int) ;
 int conhandle ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
cfe_tty_outwakeup(struct tty *tp)
{
 int len, written, rc;
 u_char buf[CFEBURSTLEN];

 for (;;) {
  len = ttydisc_getc(tp, buf, sizeof buf);
  if (len == 0)
   break;

  written = 0;
  while (written < len) {
   rc = cfe_write(conhandle, &buf[written], len - written);
   if (rc < 0)
    break;
   written += rc;
  }
 }
}
