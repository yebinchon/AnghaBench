
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_OPTION ;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 int getopt (int,char**,char*) ;
 int * includes ;
 int optarg ;
 scalar_t__ optind ;
 int sl_add (int *,int ) ;
 int sl_free (int *,int ) ;
 int * sl_init () ;
 int soelim_file (int ,int) ;
 int soelim_fopen (char*) ;
 int stdin ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, i;
 int ret = 0;
 int flags = 0;

 includes = sl_init();
 if (includes == ((void*)0))
  err(EXIT_FAILURE, "sl_init()");

 while ((ch = getopt(argc, argv, "CrtvI:")) != -1) {
  switch (ch) {
  case 'C':
   flags |= C_OPTION;
   break;
  case 'r':
  case 'v':
  case 't':

   break;
  case 'I':
   sl_add(includes, optarg);
   break;
  default:
   sl_free(includes, 0);
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc == 0)
  ret = soelim_file(stdin, flags);

 for (i = 0; i < argc; i++)
  ret = soelim_file(soelim_fopen(argv[i]), flags);

 sl_free(includes, 0);

 return (ret);
}
