
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {void* s_addr; } ;
struct TYPE_2__ {int pos; scalar_t__ srcitem; scalar_t__ nItems; scalar_t__ lstart; struct in_addr ip; int * srcptr; } ;
struct iplist {TYPE_1__ cur; } ;


 void* INADDR_ANY ;
 void* htonl (scalar_t__) ;
 int iplist_nextrange (struct iplist*) ;

struct in_addr
iplist_next(struct iplist *list)
{
  if (list->cur.pos == -1) {
    list->cur.srcptr = ((void*)0);
    if (!iplist_nextrange(list)) {
      list->cur.ip.s_addr = INADDR_ANY;
      return list->cur.ip;
    }
  } else if (++list->cur.srcitem == list->cur.nItems) {
    if (!iplist_nextrange(list)) {
      list->cur.ip.s_addr = INADDR_ANY;
      list->cur.pos = -1;
      return list->cur.ip;
    }
  } else
    list->cur.ip.s_addr = htonl(list->cur.lstart + list->cur.srcitem);
  list->cur.pos++;

  return list->cur.ip;
}
