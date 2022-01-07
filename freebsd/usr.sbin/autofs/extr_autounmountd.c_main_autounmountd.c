
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct pidfh {int dummy; } ;
struct kevent {int dummy; } ;
typedef scalar_t__ pid_t ;
typedef int intmax_t ;


 char* AUTOUNMOUNTD_PIDFILE ;
 scalar_t__ EEXIST ;
 int EVFILT_FS ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int TAILQ_INIT (int *) ;
 int atoi (int ) ;
 int automounted ;
 int daemon (int ,int ) ;
 int difftime (int,int) ;
 int do_wait (int,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int expire_automounted (int) ;
 int getopt (int,char**,char*) ;
 int kevent (int,struct kevent*,int,int *,int ,int *) ;
 int kqueue () ;
 int log_debugx (char*,...) ;
 int log_err (int,char*,...) ;
 int log_errx (int,char*,...) ;
 int log_init (int) ;
 int log_warn (char*) ;
 int optarg ;
 scalar_t__ optind ;
 struct pidfh* pidfile_open (char const*,int,scalar_t__*) ;
 int pidfile_remove (struct pidfh*) ;
 int pidfile_write (struct pidfh*) ;
 int refresh_automounted () ;
 int usage_autounmountd () ;

int
main_autounmountd(int argc, char **argv)
{
 struct kevent event;
 struct pidfh *pidfh;
 pid_t otherpid;
 const char *pidfile_path = AUTOUNMOUNTD_PIDFILE;
 int ch, debug = 0, error, kq;
 time_t expiration_time = 600, retry_time = 600, mounted_max, sleep_time;
 bool dont_daemonize = 0;

 while ((ch = getopt(argc, argv, "dr:t:v")) != -1) {
  switch (ch) {
  case 'd':
   dont_daemonize = 1;
   debug++;
   break;
  case 'r':
   retry_time = atoi(optarg);
   break;
  case 't':
   expiration_time = atoi(optarg);
   break;
  case 'v':
   debug++;
   break;
  case '?':
  default:
   usage_autounmountd();
  }
 }
 argc -= optind;
 if (argc != 0)
  usage_autounmountd();

 if (retry_time <= 0)
  log_errx(1, "retry time must be greater than zero");
 if (expiration_time <= 0)
  log_errx(1, "expiration time must be greater than zero");

 log_init(debug);

 pidfh = pidfile_open(pidfile_path, 0600, &otherpid);
 if (pidfh == ((void*)0)) {
  if (errno == EEXIST) {
   log_errx(1, "daemon already running, pid: %jd.",
       (intmax_t)otherpid);
  }
  log_err(1, "cannot open or create pidfile \"%s\"",
      pidfile_path);
 }

 if (dont_daemonize == 0) {
  if (daemon(0, 0) == -1) {
   log_warn("cannot daemonize");
   pidfile_remove(pidfh);
   exit(1);
  }
 }

 pidfile_write(pidfh);

 TAILQ_INIT(&automounted);

 kq = kqueue();
 if (kq < 0)
  log_err(1, "kqueue");

 EV_SET(&event, 0, EVFILT_FS, EV_ADD | EV_CLEAR, 0, 0, ((void*)0));
 error = kevent(kq, &event, 1, ((void*)0), 0, ((void*)0));
 if (error < 0)
  log_err(1, "kevent");

 for (;;) {
  refresh_automounted();
  mounted_max = expire_automounted(expiration_time);
  if (mounted_max == -1) {
   sleep_time = mounted_max;
   log_debugx("no filesystems to expire");
  } else if (mounted_max < expiration_time) {
   sleep_time = difftime(expiration_time, mounted_max);
   log_debugx("some filesystems expire in %ld  seconds",
       (long)sleep_time);
  } else {
   sleep_time = retry_time;
   log_debugx("some expired filesystems remain mounted, "
       "will retry in %ld  seconds", (long)sleep_time);
  }

  do_wait(kq, sleep_time);
 }

 return (0);
}
