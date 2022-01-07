
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_hci_command (char*,int,char**) ;
 int getopt (int,char**,char*) ;
 int numeric_bdaddr ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;
 int verbose ;

int
main(int argc, char *argv[])
{
 char *node = ((void*)0);
 int n;


 while ((n = getopt(argc, argv, "n:Nvh")) != -1) {
  switch (n) {
  case 'n':
   node = optarg;
   break;

  case 'N':
   numeric_bdaddr = 1;
   break;

  case 'v':
   verbose = 1;
   break;

  case 'h':
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (*argv == ((void*)0))
  usage();

 n = do_hci_command(node, argc, argv);

 return (n);
}
