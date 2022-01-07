
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argc; int argn; int cx; int bundle; int * argv; } ;


 int LINE_LEN ;
 int bundle_DatalinkClone (int ,int ,char*) ;
 int strncpy (char*,int ,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
CloneCommand(struct cmdargs const *arg)
{
  char namelist[LINE_LEN];
  char *name;
  int f;

  if (arg->argc == arg->argn)
    return -1;

  namelist[sizeof namelist - 1] = '\0';
  for (f = arg->argn; f < arg->argc; f++) {
    strncpy(namelist, arg->argv[f], sizeof namelist - 1);
    for(name = strtok(namelist, ", "); name; name = strtok(((void*)0),", "))
      bundle_DatalinkClone(arg->bundle, arg->cx, name);
  }

  return 0;
}
