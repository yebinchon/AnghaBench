
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,char const*) ;
 int unlink (char const*) ;

int
ID0unlink(const char *name)
{
  int ret;

  ID0set0();
  ret = unlink(name);
  log_Printf(LogID0, "%d = unlink(\"%s\")\n", ret, name);
  ID0setuser();
  return ret;
}
