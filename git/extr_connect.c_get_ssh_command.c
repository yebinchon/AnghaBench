
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int git_config_get_string_const (char*,char const**) ;

__attribute__((used)) static const char *get_ssh_command(void)
{
 const char *ssh;

 if ((ssh = getenv("GIT_SSH_COMMAND")))
  return ssh;

 if (!git_config_get_string_const("core.sshcommand", &ssh))
  return ssh;

 return ((void*)0);
}
