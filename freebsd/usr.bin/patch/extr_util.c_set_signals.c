
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sig_t ;


 int SIGHUP ;
 int SIGINT ;
 scalar_t__ SIG_IGN ;
 scalar_t__ my_exit ;
 scalar_t__ signal (int ,scalar_t__) ;

void
set_signals(int reset)
{
 static sig_t hupval, intval;

 if (!reset) {
  hupval = signal(SIGHUP, SIG_IGN);
  if (hupval != SIG_IGN)
   hupval = my_exit;
  intval = signal(SIGINT, SIG_IGN);
  if (intval != SIG_IGN)
   intval = my_exit;
 }
 signal(SIGHUP, hupval);
 signal(SIGINT, intval);
}
