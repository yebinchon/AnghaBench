
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int convert (char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int * fgets (char*,int,int ) ;
 int getopt (int,char**,char*) ;
 int lflag ;
 scalar_t__ optind ;
 int printf (char*) ;
 int stdin ;
 int * strchr (char*,char) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, first;
 char line[256];

 lflag = 0;
 while ((ch = getopt(argc, argv, "l")) != -1)
  switch (ch) {
  case 'l':
   lflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (*argv == ((void*)0))
  for (first = 1;
      fgets(line, sizeof(line), stdin) != ((void*)0); first = 0) {
   if (strchr(line, '\n') == ((void*)0))
    errx(1, "line too long.");
   if (!first)
    (void)printf("...\n");
   convert(line);
  }
 else
  for (first = 1; *argv != ((void*)0); first = 0, ++argv) {
   if (!first)
    (void)printf("...\n");
   convert(*argv);
  }
 exit(0);
}
