
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int CMDRTN_OK ;
 int DoParseCommand (char*) ;
 int LINE_MAX ;
 int * fgets (char*,int,int *) ;
 int warnx (char*,int) ;

__attribute__((used)) static int
ReadFile(FILE *fp)
{
 char line[LINE_MAX];
 int num, rtn;

 for (num = 1; fgets(line, sizeof(line), fp) != ((void*)0); num++) {
  if (*line == '#')
   continue;
  if ((rtn = DoParseCommand(line)) != 0) {
   warnx("line %d: error in file", num);
   return (rtn);
  }
 }
 return (CMDRTN_OK);
}
