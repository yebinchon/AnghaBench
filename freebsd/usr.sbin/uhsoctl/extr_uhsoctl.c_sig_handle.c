
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int running ;
 int timers ;
 int tmr_run (int *) ;

__attribute__((used)) static void
sig_handle(int sig)
{

 switch (sig) {
 case 131:
 case 130:
 case 129:
 case 128:
  running = 0;
  break;
 case 132:
  tmr_run(&timers);
  break;
 }
}
