
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFNAMSIZ ;
 scalar_t__ action_propset (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
action_enable(int argc, char **argv)
{
 char *action_argv;
 char argv_enable[IFNAMSIZ + sizeof(":enable=")];
 int i;
 int error;

 if (argc < 1)
  return (1);

 error = 0;
 for (i = 0; i < argc; i++) {
  sprintf(argv_enable, "%s:enable=", argv[i]);
  action_argv = argv_enable;
  error += action_propset(action_argv);
 }

 return (error);
}
