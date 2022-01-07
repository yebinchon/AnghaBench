
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_2__ {void* lstart; int nItems; char* srcptr; scalar_t__ srcitem; struct in_addr ip; } ;
struct iplist {TYPE_1__ cur; } ;


 int do_inet_aton (char*,char*,struct in_addr*) ;
 int inet_aton (char*,struct in_addr*) ;
 void* ntohl (int ) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int
iplist_setrange(struct iplist *list, char *range)
{
  char *ptr, *to;

  if ((ptr = strpbrk(range, ",-")) == ((void*)0)) {
    if (!inet_aton(range, &list->cur.ip))
      return 0;
    list->cur.lstart = ntohl(list->cur.ip.s_addr);
    list->cur.nItems = 1;
  } else {
    if (!do_inet_aton(range, ptr, &list->cur.ip))
      return 0;
    if (*ptr == ',') {
      list->cur.lstart = ntohl(list->cur.ip.s_addr);
      list->cur.nItems = 1;
    } else {
      struct in_addr endip;

      to = ptr+1;
      if ((ptr = strpbrk(to, ",-")) == ((void*)0))
        ptr = to + strlen(to);
      if (*to == '-')
        return 0;
      if (!do_inet_aton(to, ptr, &endip))
        return 0;
      list->cur.lstart = ntohl(list->cur.ip.s_addr);
      list->cur.nItems = ntohl(endip.s_addr) - list->cur.lstart + 1;
      if (list->cur.nItems < 1)
        return 0;
    }
  }
  list->cur.srcitem = 0;
  list->cur.srcptr = range;
  return 1;
}
