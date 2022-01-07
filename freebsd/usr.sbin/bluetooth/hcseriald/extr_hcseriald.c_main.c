
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int speed_t ;
typedef int sa ;
typedef int p ;
typedef int FILE ;


 int FILENAME_MAX ;
 int LOG_ERR ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int LOG_USER ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int atoi (char*) ;
 int close (int) ;
 int closelog () ;
 scalar_t__ daemon (int ,int ) ;
 int done ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 char* hcseriald ;
 int memset (struct sigaction*,int ,int) ;
 int open_device (char*,int,char*) ;
 int openlog (char*,int,int ) ;
 char* optarg ;
 int select (int ,int *,int *,int *,int *) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sighandler ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strerror (int ) ;
 int syslog (int ,char*,char*,int ,...) ;
 int unlink (char*) ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 char *device = ((void*)0), *name = ((void*)0);
 speed_t speed = 115200;
 int n, detach = 1;
 char p[FILENAME_MAX];
 FILE *f = ((void*)0);
 struct sigaction sa;


 while ((n = getopt(argc, argv, "df:n:s:h")) != -1) {
  switch (n) {
  case 'd':
   detach = 0;
   break;

  case 'f':
   device = optarg;
   break;

  case 'n':
   name = optarg;
   break;

  case 's':
   speed = atoi(optarg);
   if (speed < 0)
    usage(argv[0]);
   break;

  case 'h':
  default:
   usage(argv[0]);
   break;
  }
 }

 if (device == ((void*)0) || name == ((void*)0))
  usage(argv[0]);

 openlog(hcseriald, LOG_PID | LOG_NDELAY, LOG_USER);


 n = open_device(device, speed, name);

 if (detach && daemon(0, 0) < 0) {
  syslog(LOG_ERR, "Could not daemon(0, 0). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }


 snprintf(p, sizeof(p), "/var/run/%s.%s.pid", hcseriald, name);
 f = fopen(p, "w");
 if (f == ((void*)0)) {
  syslog(LOG_ERR, "Could not fopen(%s). %s (%d)",
   p, strerror(errno), errno);
  exit(1);
 }
 fprintf(f, "%d", getpid());
 fclose(f);


 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = sighandler;

 if (sigaction(SIGTERM, &sa, ((void*)0)) < 0) {
  syslog(LOG_ERR, "Could not sigaction(SIGTERM). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }

 if (sigaction(SIGHUP, &sa, ((void*)0)) < 0) {
  syslog(LOG_ERR, "Could not sigaction(SIGHUP). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }

 if (sigaction(SIGINT, &sa, ((void*)0)) < 0) {
  syslog(LOG_ERR, "Could not sigaction(SIGINT). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }


 while (!done)
  select(0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));


 unlink(p);
 close(n);
 closelog();

 return (0);
}
