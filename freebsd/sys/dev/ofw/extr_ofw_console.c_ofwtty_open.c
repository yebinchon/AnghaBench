
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int OFWCONS_POLL_HZ ;
 int callout_reset (int *,int,int ,struct tty*) ;
 int hz ;
 int ofw_timeout ;
 int ofw_timer ;
 int polltime ;

__attribute__((used)) static int
ofwtty_open(struct tty *tp)
{
 polltime = hz / OFWCONS_POLL_HZ;
 if (polltime < 1)
  polltime = 1;

 callout_reset(&ofw_timer, polltime, ofw_timeout, tp);

 return (0);
}
