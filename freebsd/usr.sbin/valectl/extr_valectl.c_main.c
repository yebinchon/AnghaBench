
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NETMAP_BDG_ATTACH ;
 int NETMAP_BDG_DELIF ;
 int NETMAP_BDG_DETACH ;
 int NETMAP_BDG_HOST ;
 int NETMAP_BDG_LIST ;
 int NETMAP_BDG_NEWIF ;
 int NETMAP_BDG_POLLING_OFF ;
 int NETMAP_BDG_POLLING_ON ;
 int atoi (char*) ;
 scalar_t__ bdg_ctl (char*,int,int,char*,int) ;
 int fprintf (int ,char*,int,char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int stderr ;
 char* strdup (char*) ;
 int usage (int) ;

int
main(int argc, char *argv[])
{
 int ch, nr_cmd = 0, nr_arg = 0;
 char *name = ((void*)0), *nmr_config = ((void*)0);
 int nr_arg2 = 0;

 while ((ch = getopt(argc, argv, "d:a:h:g:l:n:r:C:p:P:m:")) != -1) {
  if (ch != 'C' && ch != 'm')
   name = optarg;
  switch (ch) {
  default:
   fprintf(stderr, "bad option %c %s", ch, optarg);
   usage(-1);
   break;
  case 'd':
   nr_cmd = NETMAP_BDG_DETACH;
   break;
  case 'a':
   nr_cmd = NETMAP_BDG_ATTACH;
   break;
  case 'h':
   nr_cmd = NETMAP_BDG_ATTACH;
   nr_arg = NETMAP_BDG_HOST;
   break;
  case 'n':
   nr_cmd = NETMAP_BDG_NEWIF;
   break;
  case 'r':
   nr_cmd = NETMAP_BDG_DELIF;
   break;
  case 'g':
   nr_cmd = 0;
   break;
  case 'l':
   nr_cmd = NETMAP_BDG_LIST;
   break;
  case 'C':
   nmr_config = strdup(optarg);
   break;
  case 'p':
   nr_cmd = NETMAP_BDG_POLLING_ON;
   break;
  case 'P':
   nr_cmd = NETMAP_BDG_POLLING_OFF;
   break;
  case 'm':
   nr_arg2 = atoi(optarg);
   break;
  }
 }
 if (optind != argc) {

  usage(-1);
 }
 if (argc == 1) {
  nr_cmd = NETMAP_BDG_LIST;
  name = ((void*)0);
 }
 return bdg_ctl(name, nr_cmd, nr_arg, nmr_config, nr_arg2) ? 1 : 0;
}
