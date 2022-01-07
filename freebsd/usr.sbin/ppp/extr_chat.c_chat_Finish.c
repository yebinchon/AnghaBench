
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; TYPE_1__* string; } ;
struct chat {TYPE_2__ abort; int timeout; int pause; } ;
struct TYPE_3__ {int data; } ;


 int free (int ) ;
 int timer_Stop (int *) ;

void
chat_Finish(struct chat *c)
{
  timer_Stop(&c->pause);
  timer_Stop(&c->timeout);
  while (c->abort.num)
    free(c->abort.string[--c->abort.num].data);
  c->abort.num = 0;
}
