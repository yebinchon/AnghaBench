
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int mbs ;
typedef int FILE ;


 int autostop ;
 char* fgetln (int *,size_t*) ;
 int fwrite (char*,int,int,int ) ;
 size_t maxval ;
 int mbrlen (char*,size_t,int *) ;
 int memset (int *,int ,int) ;
 int* positions ;
 int putchar (char) ;
 int stdout ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
b_n_cut(FILE *fp, const char *fname)
{
 size_t col, i, lbuflen;
 char *lbuf;
 int canwrite, clen, warned;
 mbstate_t mbs;

 memset(&mbs, 0, sizeof(mbs));
 warned = 0;
 while ((lbuf = fgetln(fp, &lbuflen)) != ((void*)0)) {
  for (col = 0; lbuflen > 0; col += clen) {
   if ((clen = mbrlen(lbuf, lbuflen, &mbs)) < 0) {
    if (!warned) {
     warn("%s", fname);
     warned = 1;
    }
    memset(&mbs, 0, sizeof(mbs));
    clen = 1;
   }
   if (clen == 0 || *lbuf == '\n')
    break;
   if (col < maxval && !positions[1 + col]) {






    i = col;
    while (i < col + clen && i < maxval &&
        !positions[1 + i])
     i++;
    canwrite = i < col + clen;
    for (; i < col + clen && i < maxval; i++)
     canwrite &= positions[1 + i];
    if (canwrite)
     fwrite(lbuf, 1, clen, stdout);
   } else {




    canwrite = 1;
    for (i = col; i < col + clen; i++)
     if ((i >= maxval && !autostop) ||
         (i < maxval && !positions[1 + i])) {
      canwrite = 0;
      break;
     }
    if (canwrite)
     fwrite(lbuf, 1, clen, stdout);
   }
   lbuf += clen;
   lbuflen -= clen;
  }
  if (lbuflen > 0)
   putchar('\n');
 }
 return (warned);
}
