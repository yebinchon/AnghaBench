
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int * fopen (char const*,char const*) ;
 int log_Printf (int ,char*,int *,char const*,char const*) ;

FILE *
ID0fopen(const char *path, const char *mode)
{
  FILE *ret;

  ID0set0();
  ret = fopen(path, mode);
  log_Printf(LogID0, "%p = fopen(\"%s\", \"%s\")\n", ret, path, mode);
  ID0setuser();
  return ret;
}
