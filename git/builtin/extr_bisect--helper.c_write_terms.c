
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 scalar_t__ check_term_format (char const*,char*) ;
 int error (int ) ;
 int error_errno (int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char const*,char const*) ;
 int git_path_bisect_terms () ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int write_terms(const char *bad, const char *good)
{
 FILE *fp = ((void*)0);
 int res;

 if (!strcmp(bad, good))
  return error(_("please use two different terms"));

 if (check_term_format(bad, "bad") || check_term_format(good, "good"))
  return -1;

 fp = fopen(git_path_bisect_terms(), "w");
 if (!fp)
  return error_errno(_("could not open the file BISECT_TERMS"));

 res = fprintf(fp, "%s\n%s\n", bad, good);
 res |= fclose(fp);
 return (res < 0) ? -1 : 0;
}
