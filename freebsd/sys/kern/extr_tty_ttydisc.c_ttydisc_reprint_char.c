
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int ttydisc_echo (struct tty*,char,int) ;

__attribute__((used)) static void
ttydisc_reprint_char(void *d, char c, int quote)
{
 struct tty *tp = d;

 ttydisc_echo(tp, c, quote);
}
