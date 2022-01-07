
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* bthid_session_p ;
struct TYPE_8__ {int intr; int ctrl; int vkbd; int umouse; int ukbd; struct TYPE_8__* keys2; struct TYPE_8__* keys1; struct TYPE_8__* ctx; TYPE_1__* srv; } ;
struct TYPE_7__ {int maxfd; int rfdset; int wfdset; } ;


 int FD_CLR (int,int *) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int assert (int ) ;
 int close (int) ;
 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int next ;

void
session_close(bthid_session_p s)
{
 assert(s != ((void*)0));
 assert(s->srv != ((void*)0));

 LIST_REMOVE(s, next);

 if (s->intr != -1) {
  FD_CLR(s->intr, &s->srv->rfdset);
  FD_CLR(s->intr, &s->srv->wfdset);
  close(s->intr);

  if (s->srv->maxfd == s->intr)
   s->srv->maxfd --;
 }

 if (s->ctrl != -1) {
  FD_CLR(s->ctrl, &s->srv->rfdset);
  FD_CLR(s->ctrl, &s->srv->wfdset);
  close(s->ctrl);

  if (s->srv->maxfd == s->ctrl)
   s->srv->maxfd --;
 }

 if (s->vkbd != -1) {
  FD_CLR(s->vkbd, &s->srv->rfdset);
  close(s->vkbd);

  if (s->srv->maxfd == s->vkbd)
   s->srv->maxfd --;
 }

 if (s->umouse != -1)
  close(s->umouse);

 if (s->ukbd != -1) {
  FD_CLR(s->ukbd, &s->srv->rfdset);
  close(s->ukbd);

  if (s->srv->maxfd == s->ukbd)
   s->srv->maxfd --;
 }

 free(s->ctx);
 free(s->keys1);
 free(s->keys2);

 memset(s, 0, sizeof(*s));
 free(s);
}
