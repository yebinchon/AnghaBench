
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct in_addr {int dummy; } ;
struct server {struct server* next; int port; struct in_addr addr; } ;
struct libalias {int dummy; } ;
struct alias_link {struct server* server; } ;


 int LIBALIAS_LOCK (struct libalias*) ;
 int LIBALIAS_UNLOCK (struct libalias*) ;
 struct server* malloc (int) ;

int
LibAliasAddServer(struct libalias *la, struct alias_link *lnk, struct in_addr addr, u_short port)
{
 struct server *server;
 int res;

 LIBALIAS_LOCK(la);
 (void)la;

 server = malloc(sizeof(struct server));

 if (server != ((void*)0)) {
  struct server *head;

  server->addr = addr;
  server->port = port;

  head = lnk->server;
  if (head == ((void*)0))
   server->next = server;
  else {
   struct server *s;

   for (s = head; s->next != head; s = s->next);
   s->next = server;
   server->next = head;
  }
  lnk->server = server;
  res = 0;
 } else
  res = -1;

 LIBALIAS_UNLOCK(la);
 return (res);
}
