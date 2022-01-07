
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {struct client* clients; } ;
struct client {struct client* next; int mac; } ;


 scalar_t__ memcmp (int ,char*,int) ;

struct client* client_find(struct params *p, char *mac)
{
 struct client* c = p->clients;

 while (c) {
  if (memcmp(c->mac, mac, 6) == 0)
   return c;

  c = c->next;
 }

 return ((void*)0);
}
