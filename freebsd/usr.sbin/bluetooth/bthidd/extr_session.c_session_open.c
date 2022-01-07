
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* hid_device_p ;
typedef TYPE_2__* bthid_session_p ;
typedef TYPE_3__* bthid_server_p ;
struct TYPE_11__ {int sessions; } ;
struct TYPE_10__ {int ctrl; int intr; int vkbd; int ukbd; int umouse; struct TYPE_10__* keys1; int * keys2; scalar_t__ obutt; int state; int * ctx; int bdaddr; TYPE_3__* srv; } ;
struct TYPE_9__ {int bdaddr; } ;


 int CLOSED ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int assert (int ) ;
 void* bit_alloc (int ) ;
 int free (TYPE_2__*) ;
 int kbd_maxkey () ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int next ;

bthid_session_p
session_open(bthid_server_p srv, hid_device_p const d)
{
 bthid_session_p s;

 assert(srv != ((void*)0));
 assert(d != ((void*)0));

 if ((s = (bthid_session_p) malloc(sizeof(*s))) == ((void*)0))
  return (((void*)0));

 s->srv = srv;
 memcpy(&s->bdaddr, &d->bdaddr, sizeof(s->bdaddr));
 s->ctrl = -1;
 s->intr = -1;
 s->vkbd = -1;
 s->ctx = ((void*)0);
 s->state = CLOSED;
 s->ukbd = -1;
 s->umouse = -1;
 s->obutt = 0;

 s->keys1 = bit_alloc(kbd_maxkey());
 if (s->keys1 == ((void*)0)) {
  free(s);
  return (((void*)0));
 }

 s->keys2 = bit_alloc(kbd_maxkey());
 if (s->keys2 == ((void*)0)) {
  free(s->keys1);
  free(s);
  return (((void*)0));
 }

 LIST_INSERT_HEAD(&srv->sessions, s, next);

 return (s);
}
