
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {char* name; struct chat* arg; int func; int load; } ;
struct chat {TYPE_1__ pause; } ;


 int chat_PauseTimer ;
 int timer_Start (TYPE_1__*) ;
 int timer_Stop (TYPE_1__*) ;

__attribute__((used)) static void
chat_Pause(struct chat *c, u_long load)
{
  timer_Stop(&c->pause);
  c->pause.load += load;
  c->pause.func = chat_PauseTimer;
  c->pause.name = "chat pause";
  c->pause.arg = c;
  timer_Start(&c->pause);
}
