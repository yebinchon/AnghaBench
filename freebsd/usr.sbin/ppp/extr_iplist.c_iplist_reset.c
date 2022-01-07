
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
struct iplist {char* src; TYPE_1__ cur; scalar_t__ nItems; } ;



void
iplist_reset(struct iplist *list)
{
  list->src[0] = '\0';
  list->nItems = 0;
  list->cur.pos = -1;
}
