
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,int,int,int) ;
 int socket (int,int,int) ;

int
ID0socket(int domain, int type, int protocol)
{
  int ret;

  ID0set0();
  ret = socket(domain, type, protocol);
  log_Printf(LogID0, "%d = socket(%d, %d, %d)\n", ret, domain, type, protocol);
  ID0setuser();
  return ret;
}
