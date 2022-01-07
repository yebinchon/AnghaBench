
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int asprintf (char**,char*,char const*,char const*,char const*,char const*) ;
 int * fopen (char*,char*) ;
 int free (char*) ;

__attribute__((used)) static FILE *
openguess(const char *a[], const char *b[], const char *c[], const char *d[], char **name)
{
 FILE *f;
 int i, j, k, l;

 for (i = 0; a[i] != ((void*)0); i++) {
  for (j = 0; b[j] != ((void*)0); j++) {
   for (k = 0; c[k] != ((void*)0); k++) {
    for (l = 0; d[l] != ((void*)0); l++) {
     asprintf(name, "%s%s%s%s",
       a[i], b[j], c[k], d[l]);

     f = fopen(*name, "r");

     if (f != ((void*)0))
      return (f);

     free(*name);
    }
   }
  }
 }
 return (((void*)0));
}
