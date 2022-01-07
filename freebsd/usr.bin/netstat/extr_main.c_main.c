
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct protox {scalar_t__ pr_name; } ;
struct TYPE_3__ {int n_value; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 scalar_t__ AF_NETGRAPH ;
 scalar_t__ AF_UNIX ;
 scalar_t__ AF_UNSPEC ;
 int Aflag ;
 int Bflag ;
 int EINVAL ;
 int ERANGE ;
 int EXIT_FAILURE ;
 int Lflag ;
 size_t N_SFSTAT ;
 size_t N_UNP_COUNT ;
 size_t N_UNP_DHEAD ;
 size_t N_UNP_GENCNT ;
 size_t N_UNP_SHEAD ;
 size_t N_UNP_SPHEAD ;
 scalar_t__ PF_KEY ;
 int Pflag ;
 int Qflag ;
 int Rflag ;
 int Tflag ;
 int Wflag ;
 scalar_t__ af ;
 int aflag ;
 void* atoi (char*) ;
 int bflag ;
 int bpf_stats (char*) ;
 int dflag ;
 int errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 int getgid () ;
 int getopt (int,char**,char*) ;
 int gflag ;
 int hflag ;
 int iflag ;
 char* interface ;
 scalar_t__ interval ;
 int intpr (int *,scalar_t__) ;
 struct protox* ip6protox ;
 int isalpha (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ kread (int ,int *,int ) ;
 int kresolve_list (TYPE_1__*) ;
 int * kvmd ;
 int live ;
 int mbpr (int *,int ) ;
 char* memf ;
 int mflag ;
 int mroute6pr () ;
 int mroutepr () ;
 int mrt6_stats () ;
 int mrt_stats () ;
 struct protox* name2protox (char*) ;
 struct protox* netgraphprotox ;
 int netisr_stats () ;
 TYPE_1__* nl ;
 char* nlistf ;
 void* noutputs ;
 int numeric_addr ;
 int numeric_port ;
 char* optarg ;
 scalar_t__ optind ;
 struct protox* pfkeyprotox ;
 int pflag ;
 int printproto (struct protox*,scalar_t__,int*) ;
 struct protox* protox ;
 int rflag ;
 int routepr (int,scalar_t__) ;
 int rt_stats () ;
 scalar_t__ setgid (int ) ;
 int sethostent (int) ;
 int setnetent (int) ;
 scalar_t__ sflag ;
 int strcmp (char*,char*) ;
 int strtol (char*,char**,int ) ;
 void* unit ;
 int unixpr (int ,int ,int ,int ,int ,int*) ;
 int usage () ;
 int xflag ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_err (int,char*) ;
 int xo_errx (int,char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_parse_args (int,char**) ;
 int zflag ;

int
main(int argc, char *argv[])
{
 struct protox *tp = ((void*)0);
 int ch;
 int fib = -1;
 char *endptr;
 bool first = 1;

 af = AF_UNSPEC;

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(EXIT_FAILURE);

 while ((ch = getopt(argc, argv, "46AaBbdF:f:ghI:iLlM:mN:nPp:Qq:RrSTsuWw:xz"))
     != -1)
  switch(ch) {
  case '4':



   errx(1, "IPv4 support is not compiled in");

   break;
  case '6':



   errx(1, "IPv6 support is not compiled in");

   break;
  case 'A':
   Aflag = 1;
   break;
  case 'a':
   aflag = 1;
   break;
  case 'B':
   Bflag = 1;
   break;
  case 'b':
   bflag = 1;
   break;
  case 'd':
   dflag = 1;
   break;
  case 'F':
   fib = strtol(optarg, &endptr, 0);
   if (*endptr != '\0' ||
       (fib == 0 && (errno == EINVAL || errno == ERANGE)))
    xo_errx(1, "%s: invalid fib", optarg);
   break;
  case 'f':
   if (strcmp(optarg, "inet") == 0)
    af = AF_INET;
   else if (strcmp(optarg, "unix") == 0 ||
     strcmp(optarg, "local") == 0)
    af = AF_UNIX;





   else if (strcmp(optarg, "link") == 0)
    af = AF_LINK;
   else {
    xo_errx(1, "%s: unknown address family",
        optarg);
   }
   break;
  case 'g':
   gflag = 1;
   break;
  case 'h':
   hflag = 1;
   break;
  case 'I': {
   char *cp;

   iflag = 1;
   for (cp = interface = optarg; isalpha(*cp); cp++)
    continue;
   unit = atoi(cp);
   break;
  }
  case 'i':
   iflag = 1;
   break;
  case 'L':
   Lflag = 1;
   break;
  case 'M':
   memf = optarg;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'N':
   nlistf = optarg;
   break;
  case 'n':
   numeric_addr = numeric_port = 1;
   break;
  case 'P':
   Pflag = 1;
   break;
  case 'p':
   if ((tp = name2protox(optarg)) == ((void*)0)) {
    xo_errx(1, "%s: unknown or uninstrumented "
        "protocol", optarg);
   }
   pflag = 1;
   break;
  case 'Q':
   Qflag = 1;
   break;
  case 'q':
   noutputs = atoi(optarg);
   if (noutputs != 0)
    noutputs++;
   break;
  case 'r':
   rflag = 1;
   break;
  case 'R':
   Rflag = 1;
   break;
  case 's':
   ++sflag;
   break;
  case 'S':
   numeric_addr = 1;
   break;
  case 'u':
   af = AF_UNIX;
   break;
  case 'W':
  case 'l':
   Wflag = 1;
   break;
  case 'w':
   interval = atoi(optarg);
   iflag = 1;
   break;
  case 'T':
   Tflag = 1;
   break;
  case 'x':
   xflag = 1;
   break;
  case 'z':
   zflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argv += optind;
 argc -= optind;



 if (*argv) {
  if (isdigit(**argv)) {
   interval = atoi(*argv);
   if (interval <= 0)
    usage();
   ++argv;
   iflag = 1;
  }
  if (*argv) {
   nlistf = *argv;
   if (*++argv)
    memf = *argv;
  }
 }






 live = (nlistf == ((void*)0) && memf == ((void*)0));
 if (!live) {
  if (setgid(getgid()) != 0)
   xo_err(-1, "setgid");

  kresolve_list(nl);
 }

 if (xflag && Tflag)
  xo_errx(1, "-x and -T are incompatible, pick one.");

 if (Bflag) {
  if (!live)
   usage();
  bpf_stats(interface);
  xo_finish();
  exit(0);
 }
 if (mflag) {
  if (!live) {
   if (kread(0, ((void*)0), 0) == 0)
    mbpr(kvmd, nl[N_SFSTAT].n_value);
  } else
   mbpr(((void*)0), 0);
  xo_finish();
  exit(0);
 }
 if (Qflag) {
  if (!live) {
   if (kread(0, ((void*)0), 0) == 0)
    netisr_stats();
  } else
   netisr_stats();
  xo_finish();
  exit(0);
 }
 if (iflag && !sflag) {
  xo_open_container("statistics");
  intpr(((void*)0), af);
  xo_close_container("statistics");
  xo_finish();
  exit(0);
 }
 if (rflag) {
  xo_open_container("statistics");
  if (sflag) {
   rt_stats();
  } else
   routepr(fib, af);
  xo_close_container("statistics");
  xo_finish();
  exit(0);
 }

 if (gflag) {
  xo_open_container("statistics");
  if (sflag) {
   if (af == AF_INET || af == AF_UNSPEC)
    mrt_stats();




  } else {
   if (af == AF_INET || af == AF_UNSPEC)
    mroutepr();




  }
  xo_close_container("statistics");
  xo_finish();
  exit(0);
 }

 if (tp) {
  xo_open_container("statistics");
  printproto(tp, tp->pr_name, &first);
  if (!first)
   xo_close_list("socket");
  xo_close_container("statistics");
  xo_finish();
  exit(0);
 }

 xo_open_container("statistics");
 if (af == AF_INET || af == AF_UNSPEC)
  for (tp = protox; tp->pr_name; tp++)
   printproto(tp, tp->pr_name, &first);
 if ((af == AF_UNIX || af == AF_UNSPEC) && !sflag)
  unixpr(nl[N_UNP_COUNT].n_value, nl[N_UNP_GENCNT].n_value,
      nl[N_UNP_DHEAD].n_value, nl[N_UNP_SHEAD].n_value,
      nl[N_UNP_SPHEAD].n_value, &first);

 if (!first)
  xo_close_list("socket");
 xo_close_container("statistics");
 xo_finish();
 exit(0);
}
