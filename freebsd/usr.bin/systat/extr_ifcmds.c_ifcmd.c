
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int addstr (char*) ;
 int clrtoeol () ;
 int curscale ;
 int free (int *) ;
 char* get_helplist () ;
 int get_scale (char const*) ;
 int * matchline ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int move (int ,int ) ;
 int needsort ;
 scalar_t__ prefix (char const*,char*) ;
 int showpps ;
 int * strdup (char const*) ;

int
ifcmd(const char *cmd, const char *args)
{
 int scale;

 if (prefix(cmd, "scale")) {
  if ((scale = get_scale(args)) != -1)
   curscale = scale;
  else {
   move(CMDLINE, 0);
   clrtoeol();
   addstr("what scale? ");
   addstr(get_helplist());
  }
 } else if (prefix(cmd, "match")) {
  if (args != ((void*)0) && *args != '\0' && memcmp(args, "*", 2) != 0) {

   if (matchline != ((void*)0))
    free(matchline);
   needsort = 1;
   matchline = strdup(args);
  } else {

   if (matchline != ((void*)0))
    free(matchline);
   needsort = 1;
   matchline = ((void*)0);
  }
 } else if (prefix(cmd, "pps"))
  showpps = !showpps;

 return (1);
}
