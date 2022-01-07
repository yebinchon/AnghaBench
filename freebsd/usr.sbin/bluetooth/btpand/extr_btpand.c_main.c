
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostent {scalar_t__ h_addr; } ;
typedef int bdaddr_t ;
struct TYPE_3__ {scalar_t__ class; int * name; } ;


 int EXIT_FAILURE ;
 int L2CAP_LM_MASTER ;
 scalar_t__ L2CAP_PSM_BNEP ;
 int L2CAP_PSM_INVALID (unsigned long) ;
 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_PERROR ;
 int LOG_PID ;
 scalar_t__ SDP_SERVICE_CLASS_PANU ;
 int SIGPIPE ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 unsigned long __arraycount (TYPE_1__*) ;
 int asprintf (char**,char*,char*) ;
 scalar_t__ bdaddr_any (int *) ;
 int bdaddr_copy (int *,int *) ;
 int bt_aton (char*,int *) ;
 int bt_devaddr (char*,int *) ;
 struct hostent* bt_gethostbyname (char*) ;
 int channel_init () ;
 int client_init () ;
 char* control_path ;
 int err (int ,char*) ;
 int errx (int ,char*,char*,...) ;
 int event_dispatch () ;
 int event_init () ;
 int exit (int ) ;
 int fork () ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 int h_errno ;
 int hstrerror (int ) ;
 char* interface_name ;
 int l2cap_mode ;
 scalar_t__ l2cap_psm ;
 int local_bdaddr ;
 int main_detach () ;
 int main_exit ;
 int openlog (int ,int,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int remote_bdaddr ;
 int server_init () ;
 int server_limit ;
 scalar_t__ service_class ;
 int * service_name ;
 TYPE_1__* services ;
 int signal (int ,int ) ;
 int strcasecmp (char*,int *) ;
 int * strchr (char*,char) ;
 unsigned long strtoul (char*,char**,int) ;
 int tap_init () ;
 int usage () ;
 int wait (int*) ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 unsigned long ul;
 char * ep;
 int ch, status;

 while ((ch = getopt(argc, argv, "a:c:d:i:l:m:p:S:s:")) != -1) {
  switch (ch) {
  case 'a':
   if (!bt_aton(optarg, &remote_bdaddr)) {
    struct hostent *he;

    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(EXIT_FAILURE, "%s: %s",
         optarg, hstrerror(h_errno));

    bdaddr_copy(&remote_bdaddr,
     (bdaddr_t *)he->h_addr);
   }

   break;

  case 'c':
   control_path = optarg;
   break;

  case 'd':
   if (!bt_devaddr(optarg, &local_bdaddr)) {
    struct hostent *he;

    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(EXIT_FAILURE, "%s: %s",
         optarg, hstrerror(h_errno));

    bdaddr_copy(&local_bdaddr,
     (bdaddr_t *)he->h_addr);
   }
   break;

  case 'i':
   if (strchr(optarg, '/') == ((void*)0)) {
    asprintf(&ep, "/dev/%s", optarg);
    interface_name = ep;
   } else
    interface_name = optarg;
   break;

  case 'l':
   ul = strtoul(optarg, &ep, 10);
   if (*optarg == '\0' || *ep != '\0' || ul == 0)
    errx(EXIT_FAILURE, "%s: invalid session limit",
     optarg);

   server_limit = ul;
   break;

  case 'm':
   warnx("Setting link mode is not yet supported");
   break;

  case 'p':
   ul = strtoul(optarg, &ep, 0);
   if (*optarg == '\0' || *ep != '\0'
       || ul > 0xffff || L2CAP_PSM_INVALID(ul))
    errx(EXIT_FAILURE, "%s: invalid PSM", optarg);

   l2cap_psm = ul;
   break;

  case 's':
  case 'S':
   for (ul = 0; strcasecmp(optarg, services[ul].name); ul++) {
    if (ul == __arraycount(services))
     errx(EXIT_FAILURE, "%s: unknown service", optarg);
   }

   if (ch == 's')
    service_name = services[ul].name;

   service_class = services[ul].class;
   break;

  default:
   usage();

  }
 }

 argc -= optind;
 argv += optind;


 if (bdaddr_any(&local_bdaddr) || service_class == 0)
  usage();

 if (!bdaddr_any(&remote_bdaddr) && (server_limit != 0 ||
     control_path != ((void*)0) || (service_name != ((void*)0) && l2cap_psm != 0)))
  usage();


 if (interface_name == ((void*)0))
  interface_name = "/dev/tap";

 if (l2cap_psm == 0)
  l2cap_psm = L2CAP_PSM_BNEP;

 if (bdaddr_any(&remote_bdaddr) && server_limit == 0) {
  if (service_class == SDP_SERVICE_CLASS_PANU)
   server_limit = 1;
  else
   server_limit = 7;
 }
 switch(fork()) {
 case -1:
  err(EXIT_FAILURE, "fork() failed");

 case 0:
  signal(SIGPIPE, SIG_IGN);

  openlog(getprogname(), LOG_NDELAY | LOG_PERROR | LOG_PID, LOG_DAEMON);

  channel_init();
  server_init();
  event_init();
  client_init();
  tap_init();

  main_detach();

  event_dispatch();
  break;

 default:
  signal(SIGUSR1, main_exit);
  wait(&status);

  if (WIFEXITED(status))
   exit(WEXITSTATUS(status));

  break;
 }

 err(EXIT_FAILURE, "exiting");
}
