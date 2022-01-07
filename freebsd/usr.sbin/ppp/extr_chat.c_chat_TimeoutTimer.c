
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chat {int TimedOut; int timeout; } ;


 int timer_Stop (int *) ;

__attribute__((used)) static void
chat_TimeoutTimer(void *v)
{
  struct chat *c = (struct chat *)v;
  timer_Stop(&c->timeout);
  c->TimedOut = 1;
}
