
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int prompt; } ;


 int timer_Show (int ,int ) ;

__attribute__((used)) static int
ShowTimerList(struct cmdargs const *arg)
{
  timer_Show(0, arg->prompt);
  return 0;
}
