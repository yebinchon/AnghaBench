
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setproctitle (char*,...) ;

void
SetTitle(const char *title)
{
  if (title == ((void*)0))
    setproctitle(((void*)0));
  else if (title[0] == '-' && title[1] != '\0')
    setproctitle("-%s", title + 1);
  else
    setproctitle("%s", title);
}
