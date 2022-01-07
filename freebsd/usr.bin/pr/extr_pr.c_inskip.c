
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fclose (int *) ;
 int getc (int *) ;
 int * stdin ;

int
inskip(FILE *inf, int pgcnt, int lncnt)
{
 int c;
 int cnt;

 while(--pgcnt > 0) {
  cnt = lncnt;
  while ((c = getc(inf)) != EOF) {
   if ((c == '\n') && (--cnt == 0))
    break;
  }
  if (c == EOF) {
   if (inf != stdin)
    (void)fclose(inf);
   return(1);
  }
 }
 return(0);
}
