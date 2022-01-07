
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int bsd ;
 int category_file () ;
 char* category_name () ;
 int dirname (int ) ;
 int errf (char*,int ) ;
 int errno ;
 int fflush (int ) ;
 int * fopen (int ,char*) ;
 int mkdir (int ,int) ;
 int printf (char*,char*) ;
 int stdout ;
 int strerror (int ) ;
 scalar_t__ verbose ;

FILE *
open_category(void)
{
 FILE *file;

 if (verbose) {
  (void) printf("Writing category %s: ", category_name());
  (void) fflush(stdout);
 }


 if (!bsd)
  (void) mkdir(dirname(category_file()), 0755);





 file = fopen(category_file(), "w");
 if (file == ((void*)0)) {
  errf("%s", strerror(errno));
  return (((void*)0));
 }
 return (file);
}
