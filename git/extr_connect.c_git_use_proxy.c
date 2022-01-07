
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* getenv (char*) ;
 int git_config (int ,void*) ;
 scalar_t__* git_proxy_command ;
 int git_proxy_command_options ;

__attribute__((used)) static int git_use_proxy(const char *host)
{
 git_proxy_command = getenv("GIT_PROXY_COMMAND");
 git_config(git_proxy_command_options, (void*)host);
 return (git_proxy_command && *git_proxy_command);
}
