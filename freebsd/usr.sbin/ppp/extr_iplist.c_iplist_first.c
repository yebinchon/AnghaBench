
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
struct iplist {TYPE_1__ cur; } ;



__attribute__((used)) static void
iplist_first(struct iplist *list)
{
  list->cur.pos = -1;
}
