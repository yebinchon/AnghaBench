
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char,int *) ;

void
tabify(FILE *f, int tab)
{
 while (tab--) {
  (void) fputc('\t', f);
 }
}
