
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PATH_MOUNTTAB ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,long,char*,char*) ;
 scalar_t__ time (int *) ;

int
add_mtab(char *hostp, char *dirp)
{
 FILE *mtabfile;

 if ((mtabfile = fopen(PATH_MOUNTTAB, "a")) == ((void*)0))
  return (0);
 else {
  fprintf(mtabfile, "%ld\t%s\t%s\n",
      (long)time(((void*)0)), hostp, dirp);
  fclose(mtabfile);
  return (1);
 }
}
