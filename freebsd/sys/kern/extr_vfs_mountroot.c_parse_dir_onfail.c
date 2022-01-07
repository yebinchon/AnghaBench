
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_CONTINUE ;
 int A_PANIC ;
 int A_REBOOT ;
 int A_RETRY ;
 int EINVAL ;
 int M_TEMP ;
 int free (char*,int ) ;
 int parse_token (char**,char**) ;
 int printf (char*,char*) ;
 int root_mount_onfail ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
parse_dir_onfail(char **conf)
{
 char *action;
 int error;

 error = parse_token(conf, &action);
 if (error)
  return (error);

 if (!strcmp(action, "continue"))
  root_mount_onfail = A_CONTINUE;
 else if (!strcmp(action, "panic"))
  root_mount_onfail = A_PANIC;
 else if (!strcmp(action, "reboot"))
  root_mount_onfail = A_REBOOT;
 else if (!strcmp(action, "retry"))
  root_mount_onfail = A_RETRY;
 else {
  printf("rootmount: %s: unknown action\n", action);
  error = EINVAL;
 }

 free(action, M_TEMP);
 return (0);
}
