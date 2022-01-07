
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int LC_CTYPE ;
 int * delim ;
 int delimcnt ;
 int err (int,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int * malloc (size_t) ;
 size_t mbsrtowcs (int *,char const**,size_t,int *) ;
 char* optarg ;
 scalar_t__ optind ;
 int parallel (char**) ;
 int sequential (char**) ;
 int setlocale (int ,char*) ;
 int * tab ;
 int tr (int *) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, rval, seq;
 wchar_t *warg;
 const char *arg;
 size_t len;

 setlocale(LC_CTYPE, "");

 seq = 0;
 while ((ch = getopt(argc, argv, "d:s")) != -1)
  switch(ch) {
  case 'd':
   arg = optarg;
   len = mbsrtowcs(((void*)0), &arg, 0, ((void*)0));
   if (len == (size_t)-1)
    err(1, "delimiters");
   warg = malloc((len + 1) * sizeof(*warg));
   if (warg == ((void*)0))
    err(1, ((void*)0));
   arg = optarg;
   len = mbsrtowcs(warg, &arg, len + 1, ((void*)0));
   if (len == (size_t)-1)
    err(1, "delimiters");
   delimcnt = tr(delim = warg);
   break;
  case 's':
   seq = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (*argv == ((void*)0))
  usage();
 if (!delim) {
  delimcnt = 1;
  delim = tab;
 }

 if (seq)
  rval = sequential(argv);
 else
  rval = parallel(argv);
 exit(rval);
}
