
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int print_ratio (int ,int ,int ) ;
 int stderr ;
 int strlen (char const*) ;

__attribute__((used)) static void
print_verbage(const char *file, const char *nfile, off_t usize, off_t gsize)
{
 if (file)
  fprintf(stderr, "%s:%s  ", file,
      strlen(file) < 7 ? "\t\t" : "\t");
 print_ratio(usize, gsize, stderr);
 if (nfile)
  fprintf(stderr, " -- replaced with %s", nfile);
 fprintf(stderr, "\n");
 fflush(stderr);
}
