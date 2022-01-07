
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct hostent {int h_addr; } ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int bcopy (int ,TYPE_1__*,int) ;
 scalar_t__ bind_tohost (struct sockaddr_in*,char*,char*) ;
 int bzero (struct sockaddr_in*,int) ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 struct hostent* gethostbyname (char*) ;
 int getopt (int,char**,char*) ;
 int htonl (int ) ;
 int inet_aton (char*,TYPE_1__*) ;
 char* optarg ;
 int optind ;
 int usage () ;
 int yp_get_default_domain (char**) ;

int
main(int argc, char *argv[])
{
 struct sockaddr_in sin;
 struct hostent *hent;
 char *domainname;
 int c;

 yp_get_default_domain(&domainname);

 bzero(&sin, sizeof sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

 while ((c = getopt(argc, argv, "h:d:")) != -1)
  switch (c) {
  case 'd':
   domainname = optarg;
   break;
  case 'h':
   if (inet_aton(optarg, &sin.sin_addr) == 0) {
    hent = gethostbyname(optarg);
    if (hent == ((void*)0))
     errx(1, "host %s unknown\n", optarg);
    bcopy(hent->h_addr, &sin.sin_addr,
        sizeof(sin.sin_addr));
   }
   break;
  default:
   usage();
  }

 if (optind + 1 != argc)
  usage();

 if (bind_tohost(&sin, domainname, argv[optind]))
  exit(1);
 exit(0);
}
