
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atexit (int ) ;
 int atexit_temp_dir ;
 scalar_t__ chdir (int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fifo_create_test (int) ;
 int fifo_permission_test (int) ;
 scalar_t__ geteuid () ;
 int * mkdtemp (int ) ;
 int strcpy (int ,char*) ;
 int temp_dir ;

int
main(void)
{
 int i;

 if (geteuid() != 0)
  errx(-1, "must be run as root");

 strcpy(temp_dir, "fifo_create.XXXXXXXXXXX");
 if (mkdtemp(temp_dir) == ((void*)0))
  err(-1, "mkdtemp");
 atexit(atexit_temp_dir);

 if (chdir(temp_dir) < 0)
  err(-1, "chdir");






 for (i = 0; i < 2; i++) {
  fifo_create_test(i);
  fifo_permission_test(i);
 }

 return (0);
}
