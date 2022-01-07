
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_handler_t ;




 int sigint_fn ;
 int signal (int,int ) ;
 int timer_fn ;

sig_handler_t mingw_signal(int sig, sig_handler_t handler)
{
 sig_handler_t old;

 switch (sig) {
 case 129:
  old = timer_fn;
  timer_fn = handler;
  break;

 case 128:
  old = sigint_fn;
  sigint_fn = handler;
  break;

 default:
  return signal(sig, handler);
 }

 return old;
}
