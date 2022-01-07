
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int tty_putstrn (struct tty*,char*,int) ;

int
tty_putchar(struct tty *tp, char c)
{
 return (tty_putstrn(tp, &c, 1));
}
