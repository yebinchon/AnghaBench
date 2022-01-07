
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int OPAL_POLL_EVENTS ;
 int opal_call (int ,int *) ;
 int uart_opal_put (int ,unsigned char*,int) ;

__attribute__((used)) static void
uart_opal_cnputc(struct consdev *cp, int c)
{
 unsigned char ch = c;
 int a;

 if (1) {

  for (a = 0; a < 20; a++) {
   opal_call(OPAL_POLL_EVENTS, ((void*)0));
  }
 }
 uart_opal_put(cp->cn_arg, &ch, 1);
}
