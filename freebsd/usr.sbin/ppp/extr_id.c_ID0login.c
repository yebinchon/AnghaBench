
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_host; int ut_line; int ut_user; int ut_id; } ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,int ,int,int ,int,int ,int,int ) ;
 int pututxline (struct utmpx const*) ;

void
ID0login(const struct utmpx *ut)
{
  ID0set0();
  pututxline(ut);
  log_Printf(LogID0, "pututxline(\"%.*s\", \"%.*s\", \"%.*s\", \"%.*s\")\n",
      (int)sizeof ut->ut_id, ut->ut_id,
      (int)sizeof ut->ut_user, ut->ut_user,
      (int)sizeof ut->ut_line, ut->ut_line,
      (int)sizeof ut->ut_host, ut->ut_host);
  ID0setuser();
}
