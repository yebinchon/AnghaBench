
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int BVMCONS_POLL_HZ ;
 int bvm_timeout ;
 int bvm_timer ;
 int callout_reset (int *,int,int ,struct tty*) ;
 int hz ;
 int polltime ;

__attribute__((used)) static int
bvm_tty_open(struct tty *tp)
{
 polltime = hz / BVMCONS_POLL_HZ;
 if (polltime < 1)
  polltime = 1;
 callout_reset(&bvm_timer, polltime, bvm_timeout, tp);

 return (0);
}
