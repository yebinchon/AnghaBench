
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dirname ;


 int HOME ;
 int PATH_MAX ;
 scalar_t__ chdir (char*) ;
 int printf (char*,...) ;
 scalar_t__ prompt (char*,char*,int) ;
 scalar_t__ stoprompt ;
 char* value (int ) ;

void
chdirectory(int c)
{
 char dirname[PATH_MAX];
 char *cp = dirname;

 if (prompt("[cd] ", dirname, sizeof(dirname))) {
  if (stoprompt)
   return;
  cp = value(HOME);
 }
 if (chdir(cp) < 0)
  printf("%s: bad directory\r\n", cp);
 printf("!\r\n");
}
