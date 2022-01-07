
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;
typedef int ch ;


 int GC_LOCK () ;
 int GC_UNLOCK () ;
 int gxemul_cons_write (int ) ;
 int ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
gxemul_cons_outwakeup(struct tty *tp)
{
 int len;
 u_char ch;





 for (;;) {
  len = ttydisc_getc(tp, &ch, sizeof(ch));
  if (len == 0)
   break;
  GC_LOCK();
  gxemul_cons_write(ch);
  GC_UNLOCK();
 }
}
