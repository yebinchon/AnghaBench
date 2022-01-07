
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int page_width; } ;


 char BACKGND ;
 int DROP ;
 int HEIGHT ;
 int LINELEN ;
 char TRC (char) ;
 int WIDTH ;
 int dropit (char) ;
 int ** scnkey ;
 char* scnline (int ,char*,char) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
scan_out(struct printer *pp, int scfd, char *scsp, int dlm)
{
 register char *strp;
 register int nchrs, j;
 char outbuf[LINELEN+1], *sp, c, cc;
 int d, scnhgt;

 for (scnhgt = 0; scnhgt++ < HEIGHT+DROP; ) {
  strp = &outbuf[0];
  sp = scsp;
  for (nchrs = 0; ; ) {
   d = dropit(c = TRC(cc = *sp++));
   if ((!d && scnhgt > HEIGHT) || (scnhgt <= DROP && d))
    for (j = WIDTH; --j;)
     *strp++ = BACKGND;
   else
    strp = scnline(scnkey[(int)c][scnhgt-1-d], strp, cc);
   if (*sp == dlm || *sp == '\0' ||
       nchrs++ >= pp->page_width/(WIDTH+1)-1)
    break;
   *strp++ = BACKGND;
   *strp++ = BACKGND;
  }
  while (*--strp == BACKGND && strp >= outbuf)
   ;
  strp++;
  *strp++ = '\n';
  (void) write(scfd, outbuf, strp-outbuf);
 }
}
