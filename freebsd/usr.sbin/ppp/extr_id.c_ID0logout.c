
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_id; } ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,int ) ;
 int pututxline (struct utmpx const*) ;

void
ID0logout(const struct utmpx *ut)
{
  ID0set0();
  pututxline(ut);
  log_Printf(LogID0, "pututxline(\"%.*s\")\n",
      (int)sizeof ut->ut_id, ut->ut_id);
  ID0setuser();
}
