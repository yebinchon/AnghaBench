
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* srcptr; scalar_t__ nItems; } ;
struct iplist {char* src; TYPE_1__ cur; int nItems; } ;


 scalar_t__ iplist_nextrange (struct iplist*) ;
 int strncpy (char*,char const*,int) ;

int
iplist_setsrc(struct iplist *list, const char *src)
{
  strncpy(list->src, src, sizeof list->src - 1);
  list->src[sizeof list->src - 1] = '\0';
  list->cur.srcptr = list->src;
  do {
    if (iplist_nextrange(list))
      list->nItems += list->cur.nItems;
    else
      return 0;
  } while (list->cur.srcptr != list->src);
  return 1;
}
