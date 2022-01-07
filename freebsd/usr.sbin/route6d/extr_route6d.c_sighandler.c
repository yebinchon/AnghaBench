
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int seenalrm ;
 int seenquit ;
 int seenusr1 ;

__attribute__((used)) static void
sighandler(int signo)
{

 switch (signo) {
 case 133:
  seenalrm++;
  break;
 case 130:
 case 129:
  seenquit++;
  break;
 case 128:
 case 132:
 case 131:
  seenusr1++;
  break;
 }
}
