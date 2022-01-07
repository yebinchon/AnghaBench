
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 int category_file () ;
 int errf (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fputc (char,int *) ;
 scalar_t__ fputs (char const*,int *) ;
 int strerror (int ) ;
 int unlink (int ) ;

int
putl_category(const char *s, FILE *f)
{
 if (s && fputs(s, f) == EOF) {
  (void) fclose(f);
  (void) unlink(category_file());
  errf("%s", strerror(errno));
  return (EOF);
 }
 if (fputc('\n', f) == EOF) {
  (void) fclose(f);
  (void) unlink(category_file());
  errf("%s", strerror(errno));
  return (EOF);
 }
 return (0);
}
