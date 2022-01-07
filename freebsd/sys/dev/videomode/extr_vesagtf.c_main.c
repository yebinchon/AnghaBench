
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;


 int atoi (char*) ;
 int exit (int) ;
 int print_xf86_mode (struct videomode*) ;
 int printf (char*,char*) ;
 int vesagtf_mode (int ,int ,int ,struct videomode*) ;

int
main (int argc, char *argv[])
{
 struct videomode m;

 if (argc != 4) {
  printf("usage: %s x y refresh\n", argv[0]);
  exit(1);
 }

 vesagtf_mode(atoi(argv[1]), atoi(argv[2]), atoi(argv[3]), &m);

        print_xf86_mode(&m);

 return 0;

}
