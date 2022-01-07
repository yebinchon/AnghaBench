
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int EOF ;
 int WR (char*,int) ;
 int err (int,char*) ;
 scalar_t__ ferror (int *) ;
 int free (char*) ;
 int getc (int *) ;
 int ierr (char const*) ;
 char* malloc (int) ;
 scalar_t__ rflag ;

int
bytes(FILE *fp, const char *fn, off_t off)
{
 int ch, len, tlen;
 char *ep, *p, *t;
 int wrap;
 char *sp;

 if ((sp = p = malloc(off)) == ((void*)0))
  err(1, "malloc");

 for (wrap = 0, ep = p + off; (ch = getc(fp)) != EOF;) {
  *p = ch;
  if (++p == ep) {
   wrap = 1;
   p = sp;
  }
 }
 if (ferror(fp)) {
  ierr(fn);
  free(sp);
  return 1;
 }

 if (rflag) {
  for (t = p - 1, len = 0; t >= sp; --t, ++len)
   if (*t == '\n' && len) {
    WR(t + 1, len);
    len = 0;
  }
  if (wrap) {
   tlen = len;
   for (t = ep - 1, len = 0; t >= p; --t, ++len)
    if (*t == '\n') {
     if (len) {
      WR(t + 1, len);
      len = 0;
     }
     if (tlen) {
      WR(sp, tlen);
      tlen = 0;
     }
    }
   if (len)
    WR(t + 1, len);
   if (tlen)
    WR(sp, tlen);
  }
 } else {
  if (wrap && (len = ep - p))
   WR(p, len);
  len = p - sp;
  if (len)
   WR(sp, len);
 }

 free(sp);
 return 0;
}
