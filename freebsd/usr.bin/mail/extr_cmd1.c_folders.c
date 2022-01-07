
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dirname ;


 int PATHSIZE ;
 scalar_t__ getfold (char*,int) ;
 int printf (char*) ;
 int run_command (char*,int ,int,int,char*,int *) ;
 char* value (char*) ;

int
folders(void)
{
 char dirname[PATHSIZE];
 char *cmd;

 if (getfold(dirname, sizeof(dirname)) < 0) {
  printf("No value set for \"folder\"\n");
  return (1);
 }
 if ((cmd = value("LISTER")) == ((void*)0))
  cmd = "ls";
 (void)run_command(cmd, 0, -1, -1, dirname, ((void*)0));
 return (0);
}
