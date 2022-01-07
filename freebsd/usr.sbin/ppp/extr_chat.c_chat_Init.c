
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int dummy; } ;
struct TYPE_2__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct chat {char* script; int arg; int timeout; int pause; int buf; int bufend; int bufstart; int * nargptr; int * argptr; scalar_t__ argc; struct physical* physical; TYPE_1__ desc; } ;


 int CHAT_DESCRIPTOR ;
 int chat_IsSet ;
 int chat_Read ;
 int chat_UpdateSet ;
 int chat_Write ;
 int memset (int *,char,int) ;

void
chat_Init(struct chat *c, struct physical *p)
{
  c->desc.type = CHAT_DESCRIPTOR;
  c->desc.UpdateSet = chat_UpdateSet;
  c->desc.IsSet = chat_IsSet;
  c->desc.Read = chat_Read;
  c->desc.Write = chat_Write;
  c->physical = p;
  *c->script = '\0';
  c->argc = 0;
  c->arg = -1;
  c->argptr = ((void*)0);
  c->nargptr = ((void*)0);
  c->bufstart = c->bufend = c->buf;

  memset(&c->pause, '\0', sizeof c->pause);
  memset(&c->timeout, '\0', sizeof c->timeout);
}
