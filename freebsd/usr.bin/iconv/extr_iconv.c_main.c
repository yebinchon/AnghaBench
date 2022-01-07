
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LC_ALL ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 int do_conv (int *,scalar_t__,int,int) ;
 int do_list ;
 int err (int,char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int iconv (scalar_t__,int *,int *,int *,int *) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char const*,char const*) ;
 int iconvlist (int ,int *) ;
 int long_options ;
 char* optarg ;
 scalar_t__ optind ;
 int setlocale (int ,char*) ;
 int setprogname (char*) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
 iconv_t cd;
 FILE *fp;
 const char *opt_f, *opt_t;
 int ch, i, res;
 bool opt_c = 0, opt_s = 0;

 opt_f = opt_t = "";

 setlocale(LC_ALL, "");
 setprogname(argv[0]);

 while ((ch = getopt_long(argc, argv, "csLlf:t:",
     long_options, ((void*)0))) != -1) {
  switch (ch) {
  case 'c':
   opt_c = 1;
   break;
  case 's':
   opt_s = 1;
   break;
  case 'l':

   if (opt_s || opt_c || strcmp(opt_f, "") != 0 ||
       strcmp(opt_t, "") != 0) {
    warnx("-l is not allowed with other flags.");
    usage();
   }
   iconvlist(do_list, ((void*)0));
   return (EXIT_SUCCESS);
  case 'f':

   if (optarg != ((void*)0))
    opt_f = optarg;
   break;
  case 't':

   if (optarg != ((void*)0))
    opt_t = optarg;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if ((strcmp(opt_f, "") == 0) && (strcmp(opt_t, "") == 0))
  usage();

 if (caph_limit_stdio() < 0)
  err(EXIT_FAILURE, "capsicum");





 caph_cache_catpages();




 cd = iconv_open(opt_t, opt_f);
 if (cd == (iconv_t)-1)
  err(EXIT_FAILURE, "iconv_open(%s, %s)", opt_t, opt_f);

 if (argc == 0) {
  if (caph_enter() < 0)
   err(EXIT_FAILURE, "unable to enter capability mode");
  res = do_conv(stdin, cd, opt_s, opt_c);
 } else {
  res = 0;
  for (i = 0; i < argc; i++) {
   fp = (strcmp(argv[i], "-") != 0) ?
       fopen(argv[i], "r") : stdin;
   if (fp == ((void*)0))
    err(EXIT_FAILURE, "Cannot open `%s'",
        argv[i]);

   if (i + 1 == argc && caph_enter() < 0)
    err(EXIT_FAILURE,
        "unable to enter capability mode");
   res |= do_conv(fp, cd, opt_s, opt_c);
   (void)fclose(fp);


   (void)iconv(cd, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  }
 }
 iconv_close(cd);
 return (res == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
}
