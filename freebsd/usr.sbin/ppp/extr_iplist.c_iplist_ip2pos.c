
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct iplist_cur {int pos; } ;
struct iplist {struct iplist_cur cur; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef TYPE_1__* iplist_first ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {struct iplist_cur cur; struct TYPE_4__* nItems; } ;


 TYPE_2__ iplist_next (TYPE_1__*) ;
 int memcpy (struct iplist_cur*,struct iplist_cur*,int) ;

int
iplist_ip2pos(struct iplist *list, struct in_addr ip)
{
  struct iplist_cur cur;
  u_long f;
  int result;

  result = -1;
  memcpy(&cur, &list->cur, sizeof cur);

  for (iplist_first(list), f = 0; f < list->nItems; f++)
    if (iplist_next(list).s_addr == ip.s_addr) {
      result = list->cur.pos;
      break;
    }

  memcpy(&list->cur, &cur, sizeof list->cur);
  return result;
}
