
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ctime (int*) ;
 int errx (int,char*,char*,int ) ;
 int exit (int ) ;
 int get_remote_info (char*,char*,char*,int*,char**) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int printf (char*,char*,...) ;
 int usage () ;
 int yp_get_default_domain (char**) ;
 int yp_master (char*,char*,char**) ;
 int yp_order (char*,char*,int*) ;
 int yperr_string (int) ;

int
main(int argc, char *argv[])
{
 char *domainname, *hostname = ((void*)0), *inmap, *master;
 int order, c, r;
 time_t torder;

 yp_get_default_domain(&domainname);

 while ((c = getopt(argc, argv, "h:d:")) != -1)
  switch (c) {
  case 'd':
   domainname = optarg;
   break;
  case 'h':
   hostname = optarg;
   break;
  default:
   usage();

  }

 if (optind + 1 != argc)
  usage();
 inmap = argv[optind];

 if (hostname != ((void*)0)) {
  r = get_remote_info(domainname, inmap, hostname,
      &order, &master);
 } else {
  r = yp_order(domainname, inmap, &order);
  if (r == 0)
   r = yp_master(domainname, inmap, &master);
 }

 if (r != 0)
  errx(1, "no such map %s: reason: %s",
      inmap, yperr_string(r));

 torder = order;
 printf("Map %s has order number %lld. %s", inmap,
     (long long)order, ctime(&torder));
 printf("The master server is %s.\n", master);

 exit(0);
}
