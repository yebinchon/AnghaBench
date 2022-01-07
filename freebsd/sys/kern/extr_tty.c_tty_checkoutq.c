
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_outq; } ;


 int ttyoutq_bytesleft (int *) ;

int
tty_checkoutq(struct tty *tp)
{


 return (ttyoutq_bytesleft(&tp->t_outq) >= 256);
}
