
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int kill (scalar_t__,int) ;
 int log_Printf (int ,char*,int,long,int) ;

int
ID0kill(pid_t pid, int sig)
{
  int result;

  ID0set0();
  result = kill(pid, sig);
  log_Printf(LogID0, "%d = kill(%ld, %d)\n", result, (long)pid, sig);
  ID0setuser();
  return result;
}
