
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct stat {int st_mtime; } ;
typedef int FILE ;


 int HDBUF ;
 int clearerr (int *) ;
 int eoptind ;
 int err ;
 int errcnt ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 char* fnamedefault ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int fputs (char*,int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 char* header ;
 struct tm* localtime (int*) ;
 scalar_t__ nodiag ;
 scalar_t__ nohead ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 scalar_t__ strftime (char*,int ,int ,struct tm*) ;
 int time (int *) ;
 int timefrmt ;

FILE *
nxtfile(int argc, char **argv, const char **fname, char *buf, int dt)
{
 FILE *inf = ((void*)0);
 time_t tv_sec;
 struct tm *timeptr = ((void*)0);
 struct stat statbuf;
 static int twice = -1;

 ++twice;
 if (eoptind >= argc) {



  if (twice)
   return(((void*)0));
  clearerr(stdin);
  inf = stdin;
  if (header != ((void*)0))
   *fname = header;
  else
   *fname = fnamedefault;
  if (nohead)
   return(inf);
  if ((tv_sec = time(((void*)0))) == -1) {
   ++errcnt;
   (void)fprintf(err, "pr: cannot get time of day, %s\n",
    strerror(errno));
   eoptind = argc - 1;
   return(((void*)0));
  }
  timeptr = localtime(&tv_sec);
 }
 for (; eoptind < argc; ++eoptind) {
  if (strcmp(argv[eoptind], "-") == 0) {



   clearerr(stdin);
   inf = stdin;
   if (header != ((void*)0))
    *fname = header;
   else
    *fname = fnamedefault;
   ++eoptind;
   if (nohead || (dt && twice))
    return(inf);
   if ((tv_sec = time(((void*)0))) == -1) {
    ++errcnt;
    (void)fprintf(err,
     "pr: cannot get time of day, %s\n",
     strerror(errno));
    return(((void*)0));
   }
   timeptr = localtime(&tv_sec);
  } else {



   if ((inf = fopen(argv[eoptind], "r")) == ((void*)0)) {
    ++errcnt;
    if (nodiag)
     continue;
    (void)fprintf(err, "pr: cannot open %s, %s\n",
     argv[eoptind], strerror(errno));
    continue;
   }
   if (header != ((void*)0))
    *fname = header;
   else if (dt)
    *fname = fnamedefault;
   else
    *fname = argv[eoptind];
   ++eoptind;
   if (nohead || (dt && twice))
    return(inf);

   if (dt) {
    if ((tv_sec = time(((void*)0))) == -1) {
     ++errcnt;
     (void)fprintf(err,
          "pr: cannot get time of day, %s\n",
          strerror(errno));
     fclose(inf);
     return(((void*)0));
    }
    timeptr = localtime(&tv_sec);
   } else {
    if (fstat(fileno(inf), &statbuf) < 0) {
     ++errcnt;
     (void)fclose(inf);
     (void)fprintf(err,
      "pr: cannot stat %s, %s\n",
      argv[eoptind], strerror(errno));
     return(((void*)0));
    }
    timeptr = localtime(&(statbuf.st_mtime));
   }
  }
  break;
 }
 if (inf == ((void*)0))
  return(((void*)0));




 if (strftime(buf, HDBUF, timefrmt, timeptr) <= 0) {
  ++errcnt;
  if (inf != stdin)
   (void)fclose(inf);
  (void)fputs("pr: time conversion failed\n", err);
  return(((void*)0));
 }
 return(inf);
}
