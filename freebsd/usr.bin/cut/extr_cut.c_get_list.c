
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t autostart ;
 size_t autostop ;
 int errx (int,char*) ;
 scalar_t__ isdigit (unsigned char) ;
 size_t maxval ;
 int memset (char*,char,size_t) ;
 int needpos (size_t) ;
 char* positions ;
 char* strsep (char**,char*) ;
 size_t strtol (char*,char**,int) ;

__attribute__((used)) static void
get_list(char *list)
{
 size_t setautostart, start, stop;
 char *pos;
 char *p;







 for (; (p = strsep(&list, ", \t")) != ((void*)0);) {
  setautostart = start = stop = 0;
  if (*p == '-') {
   ++p;
   setautostart = 1;
  }
  if (isdigit((unsigned char)*p)) {
   start = stop = strtol(p, &p, 10);
   if (setautostart && start > autostart)
    autostart = start;
  }
  if (*p == '-') {
   if (isdigit((unsigned char)p[1]))
    stop = strtol(p + 1, &p, 10);
   if (*p == '-') {
    ++p;
    if (!autostop || autostop > stop)
     autostop = stop;
   }
  }
  if (*p)
   errx(1, "[-bcf] list: illegal list value");
  if (!stop || !start)
   errx(1, "[-bcf] list: values may not include zero");
  if (maxval < stop) {
   maxval = stop;
   needpos(maxval + 1);
  }
  for (pos = positions + start; start++ <= stop; *pos++ = 1);
 }


 if (autostop && maxval > autostop) {
  maxval = autostop;
  needpos(maxval + 1);
 }


 if (maxval < autostart) {
  maxval = autostart;
  needpos(maxval + 1);
 }


 if (autostart)
  memset(positions + 1, '1', autostart);
}
