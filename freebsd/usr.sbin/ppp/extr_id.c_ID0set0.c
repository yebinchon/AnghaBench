
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AbortProgram (int ) ;
 int EX_NOPERM ;
 int LogERROR ;
 int euid ;
 int log_Printf (int ,char*) ;
 int seteuid (int ) ;

__attribute__((used)) static void
ID0set0(void)
{
  if (seteuid(euid) == -1) {
    log_Printf(LogERROR, "ID0set0: Unable to seteuid!\n");
    AbortProgram(EX_NOPERM);
  }
}
