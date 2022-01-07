
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_format {char* name; char* description; } ;


 struct mkimg_format* format_iterate (struct mkimg_format*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char const*,char*) ;
 int putchar (char) ;
 int stderr ;

__attribute__((used)) static void
print_formats(int usage)
{
 struct mkimg_format *f;
 const char *sep;

 if (usage) {
  fprintf(stderr, "    formats:\n");
  f = ((void*)0);
  while ((f = format_iterate(f)) != ((void*)0)) {
   fprintf(stderr, "\t%s\t-  %s\n", f->name,
       f->description);
  }
 } else {
  sep = "";
  f = ((void*)0);
  while ((f = format_iterate(f)) != ((void*)0)) {
   printf("%s%s", sep, f->name);
   sep = " ";
  }
  putchar('\n');
 }
}
