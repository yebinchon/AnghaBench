
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHAPEONLY ;
 int exit (int ) ;
 int flags ;
 int getargs (int,char**) ;
 int getfile () ;
 int icols ;
 int irows ;
 int prepfile () ;
 int printf (char*,int,int) ;
 int putfile () ;

int
main(int argc, char *argv[])
{
 getargs(argc, argv);
 getfile();
 if (flags & SHAPEONLY) {
  printf("%d %d\n", irows, icols);
  exit(0);
 }
 prepfile();
 putfile();
 exit(0);
}
