
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sig_alrm ;
 int sig_chld ;
 int sig_ign ;
 int sig_term ;

__attribute__((used)) static void
sig_handler(int signo)
{
 if (sig_ign != 0 && signo == sig_ign) {
  sig_ign = 0;
  return;
 }

 switch(signo) {
 case 0:
 case 130:
 case 131:
 case 129:
 case 128:
  sig_term = signo;
  break;
 case 132:
  sig_chld = 1;
  break;
 case 133:
  sig_alrm = 1;
  break;
 }
}
