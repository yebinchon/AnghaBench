
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct passwd {int pw_uid; int pw_gid; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev; } ;
typedef int pid_t ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {int ev; int handler; int events; TYPE_1__ ibuf; struct env* data; } ;


 int EV_READ ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 TYPE_2__* calloc (int,int) ;
 int close (int) ;
 int dns_dispatch_imsg ;
 int dns_shutdown () ;
 int dns_sig_handler ;
 int endservent () ;
 int event_add (int *,int *) ;
 int event_dispatch () ;
 int event_init () ;
 int event_set (int *,int ,int ,int ,struct env*) ;
 int fatal (char*) ;
 int fork () ;
 int imsg_init (TYPE_1__*,int) ;
 scalar_t__ setgroups (int,int *) ;
 int setproctitle (char*) ;
 scalar_t__ setresgid (int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int ) ;
 int signal_add (struct event*,int *) ;
 int signal_set (struct event*,int ,int ,int *) ;

pid_t
ypldap_dns(int pipe_ntp[2], struct passwd *pw)
{
 pid_t pid;
 struct event ev_sigint;
 struct event ev_sigterm;
 struct event ev_sighup;
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

 setproctitle("dns engine");
 close(pipe_ntp[0]);

 if (setgroups(1, &pw->pw_gid) ||
     setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
     setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid))
  fatal("can't drop privileges");
 endservent();

 event_init();
 signal_set(&ev_sigint, SIGINT, dns_sig_handler, ((void*)0));
 signal_set(&ev_sigterm, SIGTERM, dns_sig_handler, ((void*)0));
 signal_set(&ev_sighup, SIGHUP, dns_sig_handler, ((void*)0));
 signal_add(&ev_sigint, ((void*)0));
 signal_add(&ev_sigterm, ((void*)0));
 signal_add(&ev_sighup, ((void*)0));

 if ((env.sc_iev = calloc(1, sizeof(*env.sc_iev))) == ((void*)0))
  fatal(((void*)0));

 env.sc_iev->events = EV_READ;
 env.sc_iev->data = &env;
 imsg_init(&env.sc_iev->ibuf, pipe_ntp[1]);
 env.sc_iev->handler = dns_dispatch_imsg;
 event_set(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
     env.sc_iev->handler, &env);
 event_add(&env.sc_iev->ev, ((void*)0));

 event_dispatch();
 dns_shutdown();

 return (0);
}
