
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_scheme {char* name; char* description; } ;


 int fprintf (int ,char*,...) ;
 int printf (char*,char const*,char*) ;
 int putchar (char) ;
 struct mkimg_scheme* scheme_iterate (struct mkimg_scheme*) ;
 int stderr ;

__attribute__((used)) static void
print_schemes(int usage)
{
 struct mkimg_scheme *s;
 const char *sep;

 if (usage) {
  fprintf(stderr, "    schemes:\n");
  s = ((void*)0);
  while ((s = scheme_iterate(s)) != ((void*)0)) {
   fprintf(stderr, "\t%s\t-  %s\n", s->name,
       s->description);
  }
 } else {
  sep = "";
  s = ((void*)0);
  while ((s = scheme_iterate(s)) != ((void*)0)) {
   printf("%s%s", sep, s->name);
   sep = " ";
  }
  putchar('\n');
 }
}
