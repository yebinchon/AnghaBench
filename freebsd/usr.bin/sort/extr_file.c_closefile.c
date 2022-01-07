
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * compress_program ;
 int err (int,int *) ;
 int fclose (int *) ;
 int fflush (int *) ;
 scalar_t__ file_is_tmp (char const*) ;
 scalar_t__ pclose (int *) ;
 int * stdin ;
 int * stdout ;

void
closefile(FILE *f, const char *fn)
{
 if (f == ((void*)0)) {
  ;
 } else if (f == stdin) {
  ;
 } else if (f == stdout) {
  fflush(f);
 } else {
  if (file_is_tmp(fn) && compress_program != ((void*)0)) {
   if(pclose(f)<0)
    err(2,((void*)0));
  } else
   fclose(f);
 }
}
