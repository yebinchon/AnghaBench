
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int server_t ;
typedef int sa ;
typedef int int32_t ;


 int SDPD ;
 char* SDP_LOCAL_PATH ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_IGN ;
 scalar_t__ daemon (int ,int ) ;
 scalar_t__ done ;
 scalar_t__ drop_root (char const*,char const*) ;
 int errno ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int log_close () ;
 int log_crit (char*,int ,int ) ;
 int log_open (int ,int) ;
 int memset (struct sigaction*,int ,int) ;
 char* optarg ;
 scalar_t__ server_do (int *) ;
 scalar_t__ server_init (int *,char const*) ;
 int server_shutdown (int *) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sighandler ;
 int strerror (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 server_t server;
 char const *control = SDP_LOCAL_PATH;
 char const *user = "nobody", *group = "nobody";
 int32_t detach = 1, opt;
 struct sigaction sa;

 while ((opt = getopt(argc, argv, "c:dg:hu:")) != -1) {
  switch (opt) {
  case 'c':
   control = optarg;
   break;

  case 'd':
   detach = 0;
   break;

  case 'g':
   group = optarg;
   break;

  case 'u':
   user = optarg;
   break;

  case 'h':
  default:
   usage();

  }
 }

 log_open(SDPD, !detach);


 if (detach && daemon(0, 0) < 0) {
  log_crit("Could not become daemon. %s (%d)",
   strerror(errno), errno);
  exit(1);
 }


 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = sighandler;

 if (sigaction(SIGTERM, &sa, ((void*)0)) < 0 ||
     sigaction(SIGHUP, &sa, ((void*)0)) < 0 ||
     sigaction(SIGINT, &sa, ((void*)0)) < 0) {
  log_crit("Could not install signal handlers. %s (%d)",
   strerror(errno), errno);
  exit(1);
 }

 sa.sa_handler = SIG_IGN;
 if (sigaction(SIGPIPE, &sa, ((void*)0)) < 0) {
  log_crit("Could not install signal handlers. %s (%d)",
   strerror(errno), errno);
  exit(1);
 }


 if (server_init(&server, control) < 0)
  exit(1);

 if ((user != ((void*)0) || group != ((void*)0)) && drop_root(user, group) < 0)
  exit(1);

 for (done = 0; !done; ) {
  if (server_do(&server) != 0)
   done ++;
 }

 server_shutdown(&server);
 log_close();

 return (0);
}
