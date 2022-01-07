
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ifcmd (char const*,char const*) ;
 int labelifstat () ;
 scalar_t__ needclear ;
 int refresh () ;
 int showifstat () ;
 int werase (int ) ;
 int wnd ;

int
cmdifstat(const char *cmd, const char *args)
{
 int retval = 0;

 retval = ifcmd(cmd, args);

 if (retval == 1) {
  if (needclear) {
   showifstat();
   refresh();
   werase(wnd);
   labelifstat();
   needclear = 0;
  }
 }
 return (retval);
}
