
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {char* decimal_point; } ;


 char SPACE ;
 char ZERO ;
 int asprintf (char**,char*,double) ;
 char* decimal_point ;
 double e_atof (char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int fputs (char const*,int ) ;
 int free (char*) ;
 char* generate_format (double,double,double,int,char) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 char* getprogname () ;
 struct lconv* localeconv () ;
 int long_opts ;
 int numeric (char*) ;
 char* optarg ;
 int optind ;
 int printf (char*,double) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 void* unescape (char*) ;
 int valid_format (char*) ;

int
main(int argc, char *argv[])
{
 const char *sep, *term;
 struct lconv *locale;
 char pad, *fmt, *cur_print, *last_print;
 double first, last, incr, last_shown_value, cur, step;
 int c, errflg, equalize;

 pad = ZERO;
 fmt = ((void*)0);
 first = 1.0;
 last = incr = last_shown_value = 0.0;
 c = errflg = equalize = 0;
 sep = "\n";
 term = ((void*)0);


 locale = localeconv();
 if (locale && locale->decimal_point && locale->decimal_point[0] != '\0')
  decimal_point = locale->decimal_point;





 while ((optind < argc) && !numeric(argv[optind]) &&
     (c = getopt_long(argc, argv, "+f:hs:t:w", long_opts, ((void*)0))) != -1) {

  switch (c) {
  case 'f':
   fmt = optarg;
   equalize = 0;
   break;
  case 's':
   sep = unescape(optarg);
   break;
  case 't':
   term = unescape(optarg);
   break;
  case 'w':
   if (!fmt)
    if (equalize++)
     pad = SPACE;
   break;
  case 'h':
  default:
   errflg++;
   break;
  }
 }

 argc -= optind;
 argv += optind;
 if (argc < 1 || argc > 3)
  errflg++;

 if (errflg) {
  fprintf(stderr,
      "usage: %s [-w] [-f format] [-s string] [-t string] [first [incr]] last\n",
      getprogname());
  exit(1);
 }

 last = e_atof(argv[argc - 1]);

 if (argc > 1)
  first = e_atof(argv[0]);

 if (argc > 2) {
  incr = e_atof(argv[1]);

  if (incr == 0.0)
   errx(1, "zero %screment", (first < last)? "in" : "de");
 }


 if (incr == 0.0)
  incr = (first < last) ? 1.0 : -1.0;

 if (incr <= 0.0 && first < last)
  errx(1, "needs positive increment");

 if (incr >= 0.0 && first > last)
  errx(1, "needs negative decrement");

 if (fmt != ((void*)0)) {
  if (!valid_format(fmt))
   errx(1, "invalid format string: `%s'", fmt);
  fmt = unescape(fmt);
  if (!valid_format(fmt))
   errx(1, "invalid format string");




 } else
  fmt = generate_format(first, incr, last, equalize, pad);

 for (step = 1, cur = first; incr > 0 ? cur <= last : cur >= last;
     cur = first + incr * step++) {
  printf(fmt, cur);
  fputs(sep, stdout);
  last_shown_value = cur;
 }
 asprintf(&cur_print, fmt, cur);
 asprintf(&last_print, fmt, last);
 if (strcmp(cur_print, last_print) == 0 && cur != last_shown_value) {
  fputs(last_print, stdout);
  fputs(sep, stdout);
 }
 free(cur_print);
 free(last_print);

 if (term != ((void*)0))
  fputs(term, stdout);

 return (0);
}
