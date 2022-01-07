
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bthid_server_p ;
struct TYPE_4__ {int sessions; int intr; int ctrl; int cons; } ;


 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int assert (int ) ;
 int close (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int session_close (int ) ;

void
server_shutdown(bthid_server_p srv)
{
 assert(srv != ((void*)0));

 close(srv->cons);
 close(srv->ctrl);
 close(srv->intr);

 while (!LIST_EMPTY(&srv->sessions))
  session_close(LIST_FIRST(&srv->sessions));

 memset(srv, 0, sizeof(*srv));
}
