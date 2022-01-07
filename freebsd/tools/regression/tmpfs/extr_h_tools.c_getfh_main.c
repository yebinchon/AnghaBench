
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fhandle_t ;
typedef int fh ;


 int EXIT_FAILURE ;
 int STDOUT_FILENO ;
 int err (int,char*) ;
 int getfh (char*,int *) ;
 int perror (char*) ;
 int write (int ,int *,int) ;

int
getfh_main(int argc, char **argv)
{
 int error;
 fhandle_t fh;

 if (argc < 2)
  return EXIT_FAILURE;

 error = getfh(argv[1], &fh);
 if (error == 0)
  err(EXIT_FAILURE, "can not getfh");

 error = write(STDOUT_FILENO, &fh, sizeof(fh));
 if (error == -1) {
  perror("write");
  return EXIT_FAILURE;
 }

 return 0;
}
