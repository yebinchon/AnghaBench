
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APM_CTL_DEVICEFILE ;
 int APM_NORM_DEVICEFILE ;
 int EXIT_SUCCESS ;
 int F_SETFD ;
 int F_SETFL ;
 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_NOTICE ;
 int LOG_PERROR ;
 int LOG_PID ;
 int NICE_INCR ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int apmctl_fd ;
 int apmd_configfile ;
 int apmnorm_fd ;
 int daemon (int ,int ) ;
 int debug_level ;
 int err (int,char*,...) ;
 int event_loop () ;
 int exit (int ) ;
 int fcntl (int,int ,int) ;
 int getopt (int,char**,char*) ;
 int nice (int ) ;
 int open (int,int ) ;
 int openlog (char*,int,int ) ;
 int optarg ;
 scalar_t__ pipe (int*) ;
 int restart () ;
 int* signal_fd ;
 int soft_power_state_change ;
 char* strrchr (char*,char) ;
 int syslog (int ,char*) ;
 int verbose ;
 int write_pid () ;

int
main(int ac, char* av[])
{
 int ch;
 int daemonize = 1;
 char *prog;
 int logopt = LOG_NDELAY | LOG_PID;

 while ((ch = getopt(ac, av, "df:sv")) != -1) {
  switch (ch) {
  case 'd':
   daemonize = 0;
   debug_level++;
   break;
  case 'f':
   apmd_configfile = optarg;
   break;
  case 's':
   soft_power_state_change = 1;
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   err(1, "unknown option `%c'", ch);
  }
 }

 if (daemonize)
  daemon(0, 0);





 if (!daemonize)
  logopt |= LOG_PERROR;

 prog = strrchr(av[0], '/');
 openlog(prog ? prog+1 : av[0], logopt, LOG_DAEMON);

 syslog(LOG_NOTICE, "start");

 if (pipe(signal_fd) < 0)
  err(1, "pipe");
 if (fcntl(signal_fd[0], F_SETFL, O_NONBLOCK) < 0)
  err(1, "fcntl");

 if ((apmnorm_fd = open(APM_NORM_DEVICEFILE, O_RDWR)) == -1) {
  err(1, "cannot open device file `%s'", APM_NORM_DEVICEFILE);
 }

 if (fcntl(apmnorm_fd, F_SETFD, 1) == -1) {
  err(1, "cannot set close-on-exec flag for device file '%s'", APM_NORM_DEVICEFILE);
 }

 if ((apmctl_fd = open(APM_CTL_DEVICEFILE, O_RDWR)) == -1) {
  err(1, "cannot open device file `%s'", APM_CTL_DEVICEFILE);
 }

 if (fcntl(apmctl_fd, F_SETFD, 1) == -1) {
  err(1, "cannot set close-on-exec flag for device file '%s'", APM_CTL_DEVICEFILE);
 }

 restart();
 write_pid();
 event_loop();
 exit(EXIT_SUCCESS);
}
