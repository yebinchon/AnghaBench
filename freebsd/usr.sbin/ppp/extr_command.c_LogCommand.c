
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argn; int argc; int bundle; int argv; } ;


 int Concatinate (char*,int,int,char const* const*) ;
 int LINE_LEN ;
 int LogLOG ;
 int LogWARN ;
 int MAXARGS ;
 int command_Expand (char**,int,int ,int ,int,int ) ;
 int command_Free (int,char**) ;
 int getpid () ;
 int log_Printf (int ,char*,...) ;

__attribute__((used)) static int
LogCommand(struct cmdargs const *arg)
{
  char buf[LINE_LEN];

  if (arg->argn < arg->argc) {
    char *argv[MAXARGS];
    int argc = arg->argc - arg->argn;

    if (argc >= (int)(sizeof argv / sizeof argv[0])) {
      argc = sizeof argv / sizeof argv[0] - 1;
      log_Printf(LogWARN, "Truncating log command to %d args\n", argc);
    }
    command_Expand(argv, argc, arg->argv + arg->argn, arg->bundle, 1, getpid());
    Concatinate(buf, sizeof buf, argc, (const char *const *)argv);
    log_Printf(LogLOG, "%s\n", buf);
    command_Free(argc, argv);
    return 0;
  }

  return -1;
}
