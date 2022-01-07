
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_RWHODIR ;
 scalar_t__ chdir (int ) ;
 int * dirp ;
 int err (int,char*,int ) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int hscmp (void const*,void const*) ;
 int lcmp (void const*,void const*) ;
 int * opendir (char*) ;
 scalar_t__ optind ;
 int rflg ;
 int ruptime (char*,int,int (*) (void const*,void const*)) ;
 int tcmp (void const*,void const*) ;
 int ucmp (void const*,void const*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int (*cmp)(const void *, const void *);
 int aflg, ch;

 aflg = 0;
 cmp = hscmp;
 while ((ch = getopt(argc, argv, "alrut")) != -1)
  switch (ch) {
  case 'a':
   aflg = 1;
   break;
  case 'l':
   cmp = lcmp;
   break;
  case 'r':
   rflg = -1;
   break;
  case 't':
   cmp = tcmp;
   break;
  case 'u':
   cmp = ucmp;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (chdir(_PATH_RWHODIR) || (dirp = opendir(".")) == ((void*)0))
  err(1, "%s", _PATH_RWHODIR);

 ruptime(*argv, aflg, cmp);
 while (*argv++ != ((void*)0)) {
  if (*argv == ((void*)0))
   break;
  ruptime(*argv, aflg, cmp);
 }
 exit(0);
}
