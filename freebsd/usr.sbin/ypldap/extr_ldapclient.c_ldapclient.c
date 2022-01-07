
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct passwd {int pw_uid; int pw_gid; int pw_dir; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev_dns; TYPE_1__* sc_iev; int sc_idms; } ;
typedef int pid_t ;
typedef int env ;
struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int ev; int handler; void* events; TYPE_3__ ibuf; struct env* data; } ;
struct TYPE_4__ {int ev; int handler; void* events; TYPE_3__ ibuf; struct env* data; } ;


 int AF_UNIX ;
 void* EV_READ ;
 int PF_UNSPEC ;
 int PROC_CLIENT ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int TAILQ_INIT (int *) ;
 int YPLDAP_USER ;
 void* calloc (int,int) ;
 int chdir (char*) ;
 int chroot (int ) ;
 int client_dispatch_dns ;
 int client_dispatch_parent ;
 int client_shutdown () ;
 int client_sig_handler ;
 int close (int) ;
 int event_add (int *,int *) ;
 int event_dispatch () ;
 int event_init () ;
 int event_set (int *,int ,void*,int ,struct env*) ;
 int fatal (char*) ;
 int fork () ;
 struct passwd* getpwnam (int ) ;
 int imsg_init (TYPE_3__*,int) ;
 int memset (struct env*,int ,int) ;
 scalar_t__ setgroups (int,int *) ;
 int setproctitle (char*) ;
 scalar_t__ setresgid (int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int ) ;
 int signal (int ,int ) ;
 int signal_add (struct event*,int *) ;
 int signal_set (struct event*,int ,int ,int *) ;
 int socketpair (int ,int ,int ,int*) ;
 int ypldap_dns (int*,struct passwd*) ;
 int ypldap_process ;

pid_t
ldapclient(int pipe_main2client[2])
{
 pid_t pid, dns_pid;
 int pipe_dns[2];
 struct passwd *pw;
 struct event ev_sigint;
 struct event ev_sigterm;
 struct env env;

 switch (pid = fork()) {
 case -1:
  fatal("cannot fork");
  break;
 case 0:
  break;
 default:
  return (pid);
 }

 memset(&env, 0, sizeof(env));
 TAILQ_INIT(&env.sc_idms);

 if ((pw = getpwnam(YPLDAP_USER)) == ((void*)0))
  fatal("getpwnam");

 if (socketpair(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pipe_dns) == -1)
  fatal("socketpair");
 dns_pid = ypldap_dns(pipe_dns, pw);
 close(pipe_dns[1]);


 if (chroot(pw->pw_dir) == -1)
  fatal("chroot");
 if (chdir("/") == -1)
  fatal("chdir");



 setproctitle("ldap client");
 ypldap_process = PROC_CLIENT;


 if (setgroups(1, &pw->pw_gid) ||
     setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
     setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid))
  fatal("cannot drop privileges");




 event_init();
 signal(SIGPIPE, SIG_IGN);
 signal_set(&ev_sigint, SIGINT, client_sig_handler, ((void*)0));
 signal_set(&ev_sigterm, SIGTERM, client_sig_handler, ((void*)0));
 signal_add(&ev_sigint, ((void*)0));
 signal_add(&ev_sigterm, ((void*)0));

 close(pipe_main2client[0]);
 if ((env.sc_iev = calloc(1, sizeof(*env.sc_iev))) == ((void*)0))
  fatal(((void*)0));
 if ((env.sc_iev_dns = calloc(1, sizeof(*env.sc_iev_dns))) == ((void*)0))
  fatal(((void*)0));

 env.sc_iev->events = EV_READ;
 env.sc_iev->data = &env;
 imsg_init(&env.sc_iev->ibuf, pipe_main2client[1]);
 env.sc_iev->handler = client_dispatch_parent;
 event_set(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
     env.sc_iev->handler, &env);
 event_add(&env.sc_iev->ev, ((void*)0));

 env.sc_iev_dns->events = EV_READ;
 env.sc_iev_dns->data = &env;
 imsg_init(&env.sc_iev_dns->ibuf, pipe_dns[0]);
 env.sc_iev_dns->handler = client_dispatch_dns;
 event_set(&env.sc_iev_dns->ev, env.sc_iev_dns->ibuf.fd,
     env.sc_iev_dns->events, env.sc_iev_dns->handler, &env);
 event_add(&env.sc_iev_dns->ev, ((void*)0));

 event_dispatch();
 client_shutdown();

 return (0);

}
