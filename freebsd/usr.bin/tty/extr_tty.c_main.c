
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int STDIN_FILENO ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int puts (char*) ;
 char* ttyname (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, sflag;
 char *t;

 sflag = 0;
 while ((ch = getopt(argc, argv, "s")) != -1)
  switch (ch) {
  case 's':
   sflag = 1;
   break;
  case '?':
  default:
   usage();

  }

 t = ttyname(STDIN_FILENO);
 if (!sflag)
  puts(t ? t : "not a tty");
 exit(t ? EXIT_SUCCESS : EXIT_FAILURE);
}
