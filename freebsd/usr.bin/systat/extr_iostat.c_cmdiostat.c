
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_dev ;
 int dscmd (char const*,char const*,int,int *) ;
 int kbpt ;
 int labeliostat () ;
 int numbers ;
 scalar_t__ prefix (char const*,char*) ;
 int refresh () ;
 int wclear (int ) ;
 int wnd ;

int
cmdiostat(const char *cmd, const char *args)
{

 if (prefix(cmd, "kbpt"))
  kbpt = !kbpt;
 else if (prefix(cmd, "numbers"))
  numbers = 1;
 else if (prefix(cmd, "bars"))
  numbers = 0;
 else if (!dscmd(cmd, args, 100, &cur_dev))
  return (0);
 wclear(wnd);
 labeliostat();
 refresh();
 return (1);
}
