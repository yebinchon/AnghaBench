
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char getopt (int,char**,char*) ;
 int gflag ;
 int list () ;
 int optarg ;
 int set (int ) ;
 int update () ;
 int usage (int) ;

int
main(int argc, char **argv)
{
 char ch, *s;

 s = ((void*)0);
 while ((ch = getopt(argc, argv, "ghlus:")) != -1) {
  switch (ch) {
  case 'g':
   gflag = 1;
   break;
  case 'h':
   usage(0);

   break;
  case 'l':
   list();

   break;
  case 'u':
   update();

   break;

  case 's':
   set(optarg);

   break;

  case '?':
  default:
   usage(1);

   break;
  }
 }

 usage(1);


 return (0);
}
