
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AbortProgram (int ) ;
 int EX_NOPERM ;
 int LogERROR ;
 int log_Printf (int ,char*) ;
 int seteuid (int ) ;
 int uid ;

__attribute__((used)) static void
ID0setuser(void)
{
  if (seteuid(uid) == -1) {
    log_Printf(LogERROR, "ID0setuser: Unable to seteuid!\n");
    AbortProgram(EX_NOPERM);
  }
}
