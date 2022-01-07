
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (int,int *) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static void
quoted_print(FILE *fp, char *str)
{
 int c, qc;
 char *p = str;

 qc = !*p ? '"'
     : strchr(p, '\'') ? '"'
     : strchr(p, '"') ? '\''
     : strchr(p, ' ') || strchr(p, '\t') ? '"'
     : 0;
 if (qc)
  putc(qc, fp);
 while ((c = *p++)) {
  if (c == '\\' || c == qc)
   putc('\\', fp);
  putc(c, fp);
 }
 if (qc)
  putc(qc, fp);
}
