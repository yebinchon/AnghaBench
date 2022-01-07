
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,char const*) ;
 int uu_lock (char const*) ;

int
ID0uu_lock(const char *basettyname)
{
  int ret;

  ID0set0();
  ret = uu_lock(basettyname);
  log_Printf(LogID0, "%d = uu_lock(\"%s\")\n", ret, basettyname);
  ID0setuser();
  return ret;
}
