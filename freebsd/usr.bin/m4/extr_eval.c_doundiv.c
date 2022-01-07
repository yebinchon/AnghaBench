
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int INT_MAX ;
 scalar_t__ errno ;
 int getdiv (int) ;
 int getdivfile (char const*) ;
 int maxout ;
 scalar_t__ mimic_gnu ;
 int ** outfile ;
 int strtonum (char const*,int,int ,char const**) ;

__attribute__((used)) static void
doundiv(const char *argv[], int argc)
{
 int ind;
 int n;

 if (argc > 2) {
  for (ind = 2; ind < argc; ind++) {
   const char *errstr;
   n = strtonum(argv[ind], 1, INT_MAX, &errstr);
   if (errstr) {
    if (errno == EINVAL && mimic_gnu)
     getdivfile(argv[ind]);
   } else {
    if (n < maxout && outfile[n] != ((void*)0))
     getdiv(n);
   }
  }
 }
 else
  for (n = 1; n < maxout; n++)
   if (outfile[n] != ((void*)0))
    getdiv(n);
}
