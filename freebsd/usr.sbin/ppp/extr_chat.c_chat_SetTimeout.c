
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load; char* name; struct chat* arg; int func; } ;
struct chat {int TimeoutSec; TYPE_1__ timeout; } ;


 int SECTICKS ;
 int chat_TimeoutTimer ;
 int timer_Start (TYPE_1__*) ;
 int timer_Stop (TYPE_1__*) ;

__attribute__((used)) static void
chat_SetTimeout(struct chat *c)
{
  timer_Stop(&c->timeout);
  if (c->TimeoutSec > 0) {
    c->timeout.load = SECTICKS * c->TimeoutSec;
    c->timeout.func = chat_TimeoutTimer;
    c->timeout.name = "chat timeout";
    c->timeout.arg = c;
    timer_Start(&c->timeout);
  }
}
