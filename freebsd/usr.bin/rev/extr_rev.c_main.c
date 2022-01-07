
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int FILE ;


 int LC_ALL ;
 int clearerr (int *) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 char* fgetwln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int putwchar (char) ;
 int setlocale (int ,char*) ;
 int * stdin ;
 int usage () ;
 int warn (char*,char const*) ;

int
main(int argc, char *argv[])
{
 const char *filename;
 wchar_t *p, *t;
 FILE *fp;
 size_t len;
 int ch, rval;

 setlocale(LC_ALL, "");

 while ((ch = getopt(argc, argv, "")) != -1)
  switch(ch) {
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 fp = stdin;
 filename = "stdin";
 rval = 0;
 do {
  if (*argv) {
   if ((fp = fopen(*argv, "r")) == ((void*)0)) {
    warn("%s", *argv);
    rval = 1;
    ++argv;
    continue;
   }
   filename = *argv++;
  }
  while ((p = fgetwln(fp, &len)) != ((void*)0)) {
   if (p[len - 1] == '\n')
    --len;
   for (t = p + len - 1; t >= p; --t)
    putwchar(*t);
   putwchar('\n');
  }
  if (ferror(fp)) {
   warn("%s", filename);
   clearerr(fp);
   rval = 1;
  }
  (void)fclose(fp);
 } while(*argv);
 exit(rval);
}
