
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct chat {char* script; scalar_t__ argc; int arg; int TimeoutSec; char const* phone; int timeout; int pause; TYPE_1__ abort; scalar_t__ TimedOut; int * nargptr; int * argptr; int argv; int state; } ;


 int CHAT_EXPECT ;
 scalar_t__ MakeArgs (char*,int ,int ,int ) ;
 int PARSE_NOHASH ;
 int VECSIZE (int ) ;
 int strncpy (char*,char const*,int) ;
 int timer_Stop (int *) ;

int
chat_Setup(struct chat *c, const char *data, const char *phone)
{
  c->state = CHAT_EXPECT;

  if (data == ((void*)0)) {
    *c->script = '\0';
    c->argc = 0;
  } else {
    strncpy(c->script, data, sizeof c->script - 1);
    c->script[sizeof c->script - 1] = '\0';
    c->argc = MakeArgs(c->script, c->argv, VECSIZE(c->argv), PARSE_NOHASH);
  }

  c->arg = -1;
  c->argptr = ((void*)0);
  c->nargptr = ((void*)0);

  c->TimeoutSec = 30;
  c->TimedOut = 0;
  c->phone = phone;
  c->abort.num = 0;

  timer_Stop(&c->pause);
  timer_Stop(&c->timeout);

  return c->argc >= 0;
}
