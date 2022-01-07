
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 int EX_NOHOST ;
 int EX_OK ;
 int EX_OSERR ;
 int EX_USAGE ;
 scalar_t__ Kflag ;
 scalar_t__ af ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,int ) ;
 int if_nametoindex (char*) ;
 int ifindex ;
 int ifmcstat_getifmaddrs () ;
 int ifmcstat_kvm (char const*,char const*) ;
 char* optarg ;
 int options ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 int usage () ;
 scalar_t__ vflag ;

int
main(int argc, char **argv)
{
 int c, error;





 while ((c = getopt(argc, argv, options)) != -1) {
  switch (c) {
  case 'i':
   if ((ifindex = if_nametoindex(optarg)) == 0) {
    fprintf(stderr, "%s: unknown interface\n",
        optarg);
    exit(EX_NOHOST);
   }
   break;

  case 'f':
   if (strcmp(optarg, "link") == 0) {
    af = AF_LINK;
    break;
   }
   fprintf(stderr, "%s: unknown address family\n", optarg);
   exit(EX_USAGE);

   break;







  case 'v':
   ++vflag;
   break;
  default:
   usage();
   break;

  }
 }

 if (af == AF_LINK && vflag)
  usage();
 error = ifmcstat_getifmaddrs();
 if (error != 0)
  exit(EX_OSERR);

 exit(EX_OK);

}
