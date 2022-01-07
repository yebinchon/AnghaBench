
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTRL_INCLUDE ;
 int CTRL_UNKNOWN ;
 char* InterpretArg (char*,char*) ;
 int LogWARN ;
 scalar_t__ issep (char) ;
 int log_Printf (int ,char*) ;
 int strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
DecodeCtrlCommand(char *line, char *arg)
{
  const char *end;

  if (!strncasecmp(line, "include", 7) && issep(line[7])) {
    end = InterpretArg(line+8, arg);
    if (*end && *end != '#')
      log_Printf(LogWARN, "usage: !include filename\n");
    else
      return CTRL_INCLUDE;
  }
  return CTRL_UNKNOWN;
}
