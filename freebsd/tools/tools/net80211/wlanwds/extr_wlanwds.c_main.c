
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_msghdr {int dummy; } ;
typedef int ssize_t ;
typedef int msg ;


 int EX_OSERR ;
 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_UPTO (int ) ;
 int PF_ROUTE ;
 int SOCK_RAW ;
 scalar_t__ daemon (int ,int ) ;
 int discover_on_join ;
 int err (int ,char*) ;
 int fprintf (int ,char*,char const*) ;
 int getopt (int,char**,char*) ;
 int handle_rtmsg (struct rt_msghdr*,int ) ;
 char** ifnets ;
 int nifnets ;
 int openlog (char*,int,int ) ;
 void* optarg ;
 scalar_t__ optind ;
 int read (int,char*,int) ;
 int scanforvaps (int) ;
 void* script ;
 int setlogmask (int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int usage (char const*) ;

int
main(int argc, char *argv[])
{
 const char *progname = argv[0];
 const char *pidfile = ((void*)0);
 int s, c, logmask, bg = 1;
 char msg[2048];
 int log_stderr = 0;

 logmask = LOG_UPTO(LOG_INFO);
 while ((c = getopt(argc, argv, "efjP:s:tv")) != -1)
  switch (c) {
  case 'e':
   log_stderr = LOG_PERROR;
   break;
  case 'f':
   bg = 0;
   break;
  case 'j':
   discover_on_join = 1;
   break;
  case 'P':
   pidfile = optarg;
   break;
  case 's':
   script = optarg;
   break;
  case 't':
   logmask = LOG_UPTO(LOG_ERR);
   break;
  case 'v':
   logmask = LOG_UPTO(LOG_DEBUG);
   break;
  case '?':
   usage(progname);

  }
 argc -= optind, argv += optind;
 if (argc == 0) {
  fprintf(stderr, "%s: no ifnet's specified to monitor\n",
      progname);
  usage(progname);
 }
 ifnets = argv;
 nifnets = argc;

 s = socket(PF_ROUTE, SOCK_RAW, 0);
 if (s < 0)
  err(EX_OSERR, "socket");



 scanforvaps(s);


 if (bg && daemon(0, 0) < 0)
  err(EX_OSERR, "daemon");

 openlog("wlanwds", log_stderr | LOG_PID | LOG_CONS, LOG_DAEMON);
 setlogmask(logmask);

 for (;;) {
  ssize_t n = read(s, msg, sizeof(msg));
  handle_rtmsg((struct rt_msghdr *)msg, n);
 }
 return 0;
}
