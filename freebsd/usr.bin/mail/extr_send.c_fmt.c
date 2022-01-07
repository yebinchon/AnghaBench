
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {char const* n_name; struct name* n_flink; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int fputs (char const*,int *) ;
 int strlen (char const*) ;

void
fmt(const char *str, struct name *np, FILE *fo, int comma)
{
 int col, len;

 comma = comma ? 1 : 0;
 col = strlen(str);
 if (col)
  fputs(str, fo);
 for (; np != ((void*)0); np = np->n_flink) {
  if (np->n_flink == ((void*)0))
   comma = 0;
  len = strlen(np->n_name);
  col++;
  if (col + len + comma > 72 && col > 4) {
   fprintf(fo, "\n    ");
   col = 4;
  } else
   fprintf(fo, " ");
  fputs(np->n_name, fo);
  if (comma)
   fprintf(fo, ",");
  col += len + comma;
 }
 fprintf(fo, "\n");
}
