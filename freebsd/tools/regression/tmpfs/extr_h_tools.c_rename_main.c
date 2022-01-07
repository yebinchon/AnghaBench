
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int perror (char*) ;
 int rename (char*,char*) ;

int
rename_main(int argc, char **argv)
{

 if (argc < 3)
  return EXIT_FAILURE;

 if (rename(argv[1], argv[2]) == -1) {
  perror("rename");
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
