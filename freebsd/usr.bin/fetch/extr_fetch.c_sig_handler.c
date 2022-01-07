
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigalrm ;
 int siginfo ;
 int sigint ;

__attribute__((used)) static void
sig_handler(int sig)
{
 switch (sig) {
 case 130:
  sigalrm = 1;
  break;
 case 129:
  siginfo = 1;
  break;
 case 128:
  sigint = 1;
  break;
 }
}
