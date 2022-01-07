
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ load; } ;
struct chat {TYPE_1__ pause; } ;


 int timer_Stop (TYPE_1__*) ;

__attribute__((used)) static void
chat_PauseTimer(void *v)
{
  struct chat *c = (struct chat *)v;
  timer_Stop(&c->pause);
  c->pause.load = 0;
}
