
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int in; int out; int args; } ;


 int DEFAULT_GIT_PORT ;
 char* STR (int ) ;
 int _ (char*) ;
 int argv_array_push (int *,char const*) ;
 int child_process_init (struct child_process*) ;
 int die (int ,char const*) ;
 int get_host_and_port (char**,char const**) ;
 char const* git_proxy_command ;
 scalar_t__ looks_like_command_line_option (char const*) ;
 scalar_t__ start_command (struct child_process*) ;
 struct child_process* xmalloc (int) ;

__attribute__((used)) static struct child_process *git_proxy_connect(int fd[2], char *host)
{
 const char *port = STR(DEFAULT_GIT_PORT);
 struct child_process *proxy;

 get_host_and_port(&host, &port);

 if (looks_like_command_line_option(host))
  die(_("strange hostname '%s' blocked"), host);
 if (looks_like_command_line_option(port))
  die(_("strange port '%s' blocked"), port);

 proxy = xmalloc(sizeof(*proxy));
 child_process_init(proxy);
 argv_array_push(&proxy->args, git_proxy_command);
 argv_array_push(&proxy->args, host);
 argv_array_push(&proxy->args, port);
 proxy->in = -1;
 proxy->out = -1;
 if (start_command(proxy))
  die(_("cannot start proxy %s"), git_proxy_command);
 fd[0] = proxy->out;
 fd[1] = proxy->in;
 return proxy;
}
