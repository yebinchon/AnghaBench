
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {struct client* clients; } ;
struct client {struct client* next; int mac; } ;


 int mac2str (char*,int ) ;
 int printf (char*,char*) ;

void client_insert(struct params *p, struct client *c)
{

 do {
  char mac[6*3];

  mac2str(mac, c->mac);
  printf("Adding client %s\n", mac);
 } while(0);


 c->next = p->clients;
 p->clients = c;
}
