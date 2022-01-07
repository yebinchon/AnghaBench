
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argn; int argc; int * argv; } ;


 int LogWARN ;
 int Nam2mode (int ) ;
 int PHYS_ALL ;
 int PHYS_NONE ;
 int log_Printf (int ,char*,int ) ;
 int modeok ;
 int modereq ;

int
AllowModes(struct cmdargs const *arg)
{

  int f, mode, allowed;

  allowed = 0;
  for (f = arg->argn; f < arg->argc; f++) {
    mode = Nam2mode(arg->argv[f]);
    if (mode == PHYS_NONE || mode == PHYS_ALL)
      log_Printf(LogWARN, "allow modes: %s: Invalid mode\n", arg->argv[f]);
    else
      allowed |= mode;
  }

  modeok = modereq & allowed ? 1 : 0;
  return 0;
}
