
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,char const*,long) ;
 int uu_lock_txfr (char const*,scalar_t__) ;

int
ID0uu_lock_txfr(const char *basettyname, pid_t newpid)
{
  int ret;

  ID0set0();
  ret = uu_lock_txfr(basettyname, newpid);
  log_Printf(LogID0, "%d = uu_lock_txfr(\"%s\", %ld)\n", ret, basettyname,
             (long)newpid);
  ID0setuser();
  return ret;
}
