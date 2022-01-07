
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iplist {int nItems; } ;
struct in_addr {int dummy; } ;


 struct in_addr iplist_setcurpos (struct iplist*,int) ;
 int randinit () ;
 int random () ;

struct in_addr
iplist_setrandpos(struct iplist *list)
{
  randinit();
  return iplist_setcurpos(list, random() % list->nItems);
}
