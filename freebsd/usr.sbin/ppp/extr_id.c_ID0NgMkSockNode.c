
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int NgMkSockNode (char const*,int*,int*) ;
 int log_Printf (int ,char*,int,char const*) ;

int
ID0NgMkSockNode(const char *name, int *cs, int *ds)
{
  int result;

  ID0set0();
  result = NgMkSockNode(name, cs, ds);
  log_Printf(LogID0, "%d = NgMkSockNode(\"%s\", &cs, &ds)\n",
             result, name ? name : "");
  ID0setuser();
  return result;
}
