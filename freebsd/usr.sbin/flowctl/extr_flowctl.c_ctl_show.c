
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_show (int,int *) ;
 int feature_present (char*) ;
 int flow_cache_print ;
 int flow_cache_print6 ;
 int flow_cache_print6_verbose ;
 int flow_cache_print_verbose ;
 int human ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
ctl_show(int argc, char **argv)
{
 int ipv4, ipv6, verbose = 0;

 ipv4 = feature_present("inet");
 ipv6 = feature_present("inet6");

 if (argc > 0 && !strncmp(argv[0], "ipv4", 4)) {
  ipv6 = 0;
  argc--;
  argv++;
 }
 if (argc > 0 && !strncmp(argv[0], "ipv6", 4)) {
  ipv4 = 0;
  argc--;
  argv++;
 }

 if (argc > 0 && !strncmp(argv[0], "verbose", strlen(argv[0])))
  verbose = 1;

 if (argc > 0 && !strncmp(argv[0], "human", strlen(argv[0])))
  human = 1;
}
