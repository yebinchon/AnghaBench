
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int ttydisc_optimize (struct tty*) ;

void
ttydisc_open(struct tty *tp)
{
 ttydisc_optimize(tp);
}
