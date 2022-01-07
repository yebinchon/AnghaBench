
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int CFECONS_POLL_HZ ;
 int callout_reset (int *,int,int ,struct tty*) ;
 int cfe_timeout ;
 int cfe_timer ;
 int hz ;
 int polltime ;

__attribute__((used)) static int
cfe_tty_open(struct tty *tp)
{
 polltime = hz / CFECONS_POLL_HZ;
 if (polltime < 1)
  polltime = 1;
 callout_reset(&cfe_timer, polltime, cfe_timeout, tp);

 return (0);
}
