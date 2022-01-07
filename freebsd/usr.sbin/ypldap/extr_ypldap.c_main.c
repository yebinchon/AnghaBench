
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tv ;
struct timeval {int dummy; } ;
struct passwd {int pw_uid; int pw_gid; } ;
struct event {int dummy; } ;
struct env {TYPE_2__* sc_iev; int sc_group_gids; int sc_user_uids; } ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {int ev; int handler; int events; TYPE_1__ ibuf; struct env* data; } ;


 int AF_UNIX ;
 int EV_READ ;
 int PF_UNSPEC ;
 int PROC_MAIN ;
 int RB_INIT (int *) ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int YPLDAP_OPT_NOACTION ;
 int YPLDAP_OPT_VERBOSE ;
 int YPLDAP_USER ;
 TYPE_2__* calloc (int,int) ;
 int client_pid ;
 int close (int ) ;
 int cmdline_symset (int ) ;
 int conffile ;
 int daemon (int,int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int event_add (int *,int *) ;
 int event_dispatch () ;
 int event_init () ;
 int event_set (int *,int ,int ,int ,struct env*) ;
 int evtimer_add (struct event*,struct timeval*) ;
 int evtimer_set (struct event*,int ,struct env*) ;
 int exit (int) ;
 int fatal (char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ geteuid () ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwnam (int ) ;
 int imsg_init (TYPE_1__*,int ) ;
 int ldapclient (int *) ;
 int log_info (char*,char*) ;
 int log_init (int) ;
 int log_warnx (char*,int ) ;
 int main_dispatch_client ;
 int main_init_timer ;
 int main_shutdown () ;
 int main_sig_handler ;
 int memset (struct timeval*,int ,int) ;
 int optarg ;
 scalar_t__ optind ;
 int opts ;
 scalar_t__ parse_config (struct env*,int ,int) ;
 int * pipe_main2client ;
 scalar_t__ setgroups (int,int *) ;
 int setproctitle (char*) ;
 scalar_t__ setresgid (int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int ) ;
 int signal_add (struct event*,int *) ;
 int signal_set (struct event*,int ,int ,struct env*) ;
 int socketpair (int ,int,int ,int *) ;
 int stderr ;
 int usage () ;
 int yp_enable_events () ;
 int yp_init (struct env*) ;
 int ypldap_process ;

int
main(int argc, char *argv[])
{
 int c;
 int debug;
 struct passwd *pw;
 struct env env;
 struct event ev_sigint;
 struct event ev_sigterm;
 struct event ev_sigchld;
 struct event ev_sighup;
 struct event ev_timer;
 struct timeval tv;

 debug = 0;
 ypldap_process = PROC_MAIN;

 log_init(1);

 while ((c = getopt(argc, argv, "dD:nf:v")) != -1) {
  switch (c) {
  case 'd':
   debug = 2;
   break;
  case 'D':
   if (cmdline_symset(optarg) < 0)
    log_warnx("could not parse macro definition %s",
        optarg);
   break;
  case 'n':
   debug = 2;
   opts |= YPLDAP_OPT_NOACTION;
   break;
  case 'f':
   conffile = optarg;
   break;
  case 'v':
   opts |= YPLDAP_OPT_VERBOSE;
   break;
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc)
  usage();

 RB_INIT(&env.sc_user_uids);
 RB_INIT(&env.sc_group_gids);

 if (parse_config(&env, conffile, opts))
  exit(1);
 if (opts & YPLDAP_OPT_NOACTION) {
  fprintf(stderr, "configuration OK\n");
  exit(0);
 }

 if (geteuid())
  errx(1, "need root privileges");

 log_init(debug);

 if (!debug) {
  if (daemon(1, 0) == -1)
   err(1, "failed to daemonize");
 }

 log_info("startup%s", (debug > 1)?" [debug mode]":"");

 if (socketpair(AF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, PF_UNSPEC,
     pipe_main2client) == -1)
  fatal("socketpair");

 client_pid = ldapclient(pipe_main2client);

 setproctitle("parent");
 event_init();

 signal_set(&ev_sigint, SIGINT, main_sig_handler, &env);
 signal_set(&ev_sigterm, SIGTERM, main_sig_handler, &env);
 signal_set(&ev_sighup, SIGHUP, main_sig_handler, &env);
 signal_set(&ev_sigchld, SIGCHLD, main_sig_handler, &env);
 signal_add(&ev_sigint, ((void*)0));
 signal_add(&ev_sigterm, ((void*)0));
 signal_add(&ev_sighup, ((void*)0));
 signal_add(&ev_sigchld, ((void*)0));

 close(pipe_main2client[1]);
 if ((env.sc_iev = calloc(1, sizeof(*env.sc_iev))) == ((void*)0))
  fatal(((void*)0));
 imsg_init(&env.sc_iev->ibuf, pipe_main2client[0]);
 env.sc_iev->handler = main_dispatch_client;

 env.sc_iev->events = EV_READ;
 env.sc_iev->data = &env;
 event_set(&env.sc_iev->ev, env.sc_iev->ibuf.fd, env.sc_iev->events,
      env.sc_iev->handler, &env);
 event_add(&env.sc_iev->ev, ((void*)0));

 yp_init(&env);

 if ((pw = getpwnam(YPLDAP_USER)) == ((void*)0))
  fatal("getpwnam");


 if (setgroups(1, &pw->pw_gid) ||
     setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) ||
     setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid))
  fatal("cannot drop privileges");




 memset(&tv, 0, sizeof(tv));
 evtimer_set(&ev_timer, main_init_timer, &env);
 evtimer_add(&ev_timer, &tv);

 yp_enable_events();
 event_dispatch();
 main_shutdown();

 return (0);
}
