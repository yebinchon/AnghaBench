
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_GROUP_STR ;
 char* DEFAULT_IFADDR_STR ;
 char* DEFAULT_IFNAME ;
 int DEFAULT_PORT ;
 int DEFAULT_TIMEOUT ;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ nmcastgroups ;
 scalar_t__ nmcastsources ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "\nIP multicast regression test utility\n");
 fprintf(stderr,
"usage: %s [-4] [-b] [-g groupaddr] [-i ifname] [-I ifaddr] [-m]\n"
"       [-M ngroups] [-p portno] [-r] [-R] [-s] [-S nsources] [-t] [-T timeout]\n"
"       [-v] [blockaddr ...]\n\n", progname);
 fprintf(stderr, "-4: Use IPv4 API "
                 "(default: Use protocol-independent API)\n");
 fprintf(stderr, "-b: bind listening socket to ifaddr "
     "(default: INADDR_ANY)\n");
 fprintf(stderr, "-g: Base IPv4 multicast group to join (default: %s)\n",
     DEFAULT_GROUP_STR);
 fprintf(stderr, "-i: interface for multicast joins (default: %s)\n",
     DEFAULT_IFNAME);
 fprintf(stderr, "-I: IPv4 address to join groups on, if using IPv4 "
     "API\n    (default: %s)\n", DEFAULT_IFADDR_STR);




 fprintf(stderr, "-M: Number of multicast groups to join "
     "(default: %d)\n", (int)nmcastgroups);
 fprintf(stderr, "-p: Set local and remote port (default: %d)\n",
     DEFAULT_PORT);
 fprintf(stderr, "-r: Set SO_REUSEPORT on (default: off)\n");
 fprintf(stderr, "-R: Randomize groups/sources (default: off)\n");
 fprintf(stderr, "-s: Test source-specific API "
     "(default: test any-source API)\n");
 fprintf(stderr, "-S: Number of multicast sources to generate if\n"
     "    none specified on command line (default: %d)\n",
     (int)nmcastsources);
 fprintf(stderr, "-t: Test get/setNsourcefilter() (default: off)\n");
 fprintf(stderr, "-T: Timeout to wait for blocked traffic on first "
     "group (default: %d)\n", DEFAULT_TIMEOUT);
 fprintf(stderr, "-v: Be verbose (default: off)\n");
 fprintf(stderr, "\nRemaining arguments are treated as a list of IPv4 "
     "sources to filter.\n\n");

 exit(EX_USAGE);
}
