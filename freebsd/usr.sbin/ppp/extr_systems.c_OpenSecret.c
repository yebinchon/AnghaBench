
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * ID0fopen (char*,char*) ;
 int LogWARN ;
 char* PPP_CONFDIR ;
 int log_Printf (int ,char*,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

FILE *
OpenSecret(const char *file)
{
  FILE *fp;
  char line[100];

  snprintf(line, sizeof line, "%s/%s", PPP_CONFDIR, file);
  fp = ID0fopen(line, "r");
  if (fp == ((void*)0))
    log_Printf(LogWARN, "OpenSecret: Can't open %s.\n", line);
  return (fp);
}
