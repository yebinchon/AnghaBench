
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* srcptr; } ;
struct iplist {char* src; TYPE_1__ cur; } ;


 int LogWARN ;
 int iplist_setrange (struct iplist*,char*) ;
 int log_Printf (int ,char*,int,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
iplist_nextrange(struct iplist *list)
{
  char *ptr, *to, *end;

  ptr = list->cur.srcptr;
  if (ptr != ((void*)0) && (ptr = strchr(ptr, ',')) != ((void*)0))
    ptr++;
  else
    ptr = list->src;

  while (*ptr != '\0' && !iplist_setrange(list, ptr)) {
    if ((end = strchr(ptr, ',')) == ((void*)0))
      end = ptr + strlen(ptr);
    if (end == ptr)
      return 0;
    log_Printf(LogWARN, "%.*s: Invalid IP range (skipping)\n",
               (int)(end - ptr), ptr);
    to = ptr;
    do
      *to = *end++;
    while (*to++ != '\0');
    if (*ptr == '\0')
      ptr = list->src;
  }

  return 1;
}
