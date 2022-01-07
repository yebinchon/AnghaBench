
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; char* ai_canonname; scalar_t__ ai_protocol; scalar_t__ ai_socktype; int ai_family; } ;


 int AF_UNSPEC ;
 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int parse_af (char*,int *) ;
 int parse_protocol (char*,scalar_t__*) ;
 int parse_socktype (char*,scalar_t__*) ;
 int printaddrinfo (struct addrinfo*) ;
 scalar_t__ printf (char*,char*) ;
 int setprogname (char*) ;
 char* strchr (char const*,char) ;
 int usage () ;
 int warnx (char*,...) ;

int
main(int argc, char **argv)
{
 static const struct addrinfo zero_addrinfo;
 struct addrinfo hints = zero_addrinfo;
 struct addrinfo *addrinfo;
 const char *hostname = ((void*)0), *service = ((void*)0);
 int ch;
 int error;

 setprogname(argv[0]);

 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = 0;
 hints.ai_protocol = 0;
 hints.ai_flags = 0;

 while ((ch = getopt(argc, argv, "cf:nNp:Ps:t:")) != -1) {
  switch (ch) {
  case 'c':
   hints.ai_flags |= AI_CANONNAME;
   break;

  case 'f':
   if (!parse_af(optarg, &hints.ai_family)) {
    warnx("invalid address family: %s", optarg);
    usage();
   }
   break;

  case 'n':
   hints.ai_flags |= AI_NUMERICHOST;
   break;

  case 'N':
   hints.ai_flags |= AI_NUMERICSERV;
   break;

  case 's':
   service = optarg;
   break;

  case 'p':
   if (!parse_protocol(optarg, &hints.ai_protocol)) {
    warnx("invalid protocol: %s", optarg);
    usage();
   }
   break;

  case 'P':
   hints.ai_flags |= AI_PASSIVE;
   break;

  case 't':
   if (!parse_socktype(optarg, &hints.ai_socktype)) {
    warnx("invalid socket type: %s", optarg);
    usage();
   }
   break;

  case '?':
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (!((argc == 1) || ((argc == 0) && (hints.ai_flags & AI_PASSIVE))))
  usage();
 if (argc == 1)
  hostname = argv[0];

 if (service != ((void*)0)) {
  char *p;

  if ((p = strchr(service, '/')) != ((void*)0)) {
   if (hints.ai_protocol != 0) {
    warnx("protocol already specified");
    usage();
   }
   *p = '\0';
   p++;

   if (!parse_protocol(p, &hints.ai_protocol)) {
    warnx("invalid protocol: %s", p);
    usage();
   }
  }
 }

 error = getaddrinfo(hostname, service, &hints, &addrinfo);
 if (error)
  errx(1, "%s", gai_strerror(error));

 if ((hints.ai_flags & AI_CANONNAME) && (addrinfo != ((void*)0))) {
  if (printf("canonname %s\n", addrinfo->ai_canonname) < 0)
   err(1, "printf");
 }

 printaddrinfo(addrinfo);

 freeaddrinfo(addrinfo);

 return 0;
}
