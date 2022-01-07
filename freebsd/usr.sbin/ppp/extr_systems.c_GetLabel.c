
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogWARN ;
 int MAXARGS ;
 int MakeArgs (char*,char**,int,int ) ;
 int PARSE_REDUCE ;
 int log_Printf (int ,char*,char const*,int) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
GetLabel(char *line, const char *filename, int linenum)
{
  char *argv[MAXARGS];
  int argc, len;

  argc = MakeArgs(line, argv, MAXARGS, PARSE_REDUCE);

  if (argc == 2 && !strcmp(argv[1], ":"))
    return argv[0];

  if (argc != 1 || (len = strlen(argv[0])) < 2 || argv[0][len-1] != ':') {
      log_Printf(LogWARN, "Bad label in %s (line %d) - missing colon\n",
                 filename, linenum);
      return ((void*)0);
  }
  argv[0][len-1] = '\0';

  return argv[0];
}
