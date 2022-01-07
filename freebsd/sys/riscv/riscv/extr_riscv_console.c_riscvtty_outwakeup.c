
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;
typedef int buf ;


 int KASSERT (int,char*) ;
 int MAX_BURST_LEN ;
 int riscv_putc (int ) ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
riscvtty_outwakeup(struct tty *tp)
{
 u_char buf[MAX_BURST_LEN];
 int len;
 int i;

 for (;;) {
  len = ttydisc_getc(tp, buf, sizeof(buf));
  if (len == 0)
   break;

  KASSERT(len == 1, ("tty error"));

  for (i = 0; i < len; i++)
   riscv_putc(buf[i]);
 }
}
