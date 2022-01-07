
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openfile {int sepstring; int * fp; } ;


 int caph_cache_catpages () ;
 scalar_t__ caph_enter () ;
 int caph_limit_stdio () ;
 int err (int,char*) ;
 int exit (int ) ;
 int fputs (int ,int ) ;
 int gatherline (struct openfile*) ;
 int getargs (char**) ;
 struct openfile* input ;
 int line ;
 int linep ;
 int morefiles ;
 int nofinalnl ;
 int putchar (char) ;
 int stdout ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct openfile *ip;

 if (argc == 1)
  usage();
 if (caph_limit_stdio() == -1)
  err(1, "unable to limit stdio");
 getargs(argv);
 if (!morefiles)
  usage();





 caph_cache_catpages();
 if (caph_enter() < 0)
  err(1, "unable to enter capability mode");

 for (;;) {
  linep = line;
  for (ip = input; ip->fp != ((void*)0); ip++)
   linep = gatherline(ip);
  if (!morefiles)
   exit(0);
  fputs(line, stdout);
  fputs(ip->sepstring, stdout);
  if (!nofinalnl)
   putchar('\n');
 }
}
