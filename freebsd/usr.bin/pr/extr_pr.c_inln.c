
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 scalar_t__ inchar ;
 int ingap ;
 int ungetc (int,int *) ;

int
inln(FILE *inf, char *buf, int lim, int *cps, int trnc, int *mor)
{
 int col;
 int gap = ingap;
 int ch = EOF;
 char *ptbuf;
 int chk = (int)inchar;

 ptbuf = buf;

 if (gap) {



  while ((--lim >= 0) && ((ch = getc(inf)) != EOF)) {



   if (ch == chk) {



    col = (ptbuf - buf) + *cps;
    col = gap - (col % gap);




    if ((col > lim) && (ungetc(ch, inf) == EOF))
     return(1);




    while ((--col >= 0) && (--lim >= 0))
     *ptbuf++ = ' ';
    continue;
   }
   if (ch == '\n')
    break;
   *ptbuf++ = ch;
  }
 } else {



  while ((--lim >= 0) && ((ch = getc(inf)) != EOF)) {
   if (ch == '\n')
    break;
   *ptbuf++ = ch;
  }
 }
 col = ptbuf - buf;
 if (ch == EOF) {
  *mor = 0;
  *cps = 0;
  if (!col)
   return(-1);
  return(col);
 }
 if (ch == '\n') {



  *mor = 0;
  *cps = 0;
  return(col);
 }




 if (trnc) {



  while ((ch = getc(inf)) != EOF) {
   if (ch == '\n')
    break;
  }
  *cps = 0;
  *mor = 0;
 } else {



  *cps += col;
  *mor = 1;
 }

 return(col);
}
