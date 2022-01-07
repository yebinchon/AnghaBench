
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int FILE ;


 int EILSEQ ;
 scalar_t__ autostop ;
 char* dcharmb ;
 int err (int,char*) ;
 char* fgetln (int *,size_t*) ;
 int free (char*) ;
 int fwrite (char*,size_t,int,int ) ;
 scalar_t__ is_delim (char) ;
 char* malloc (size_t) ;
 int maxval ;
 size_t mbrtowc (char*,char*,int,int *) ;
 int memcpy (char*,char*,size_t) ;
 char* positions ;
 int putchar (char) ;
 int sflag ;
 int stdout ;
 int warnc (int ,char*,char const*) ;
 scalar_t__ wflag ;

__attribute__((used)) static int
f_cut(FILE *fp, const char *fname)
{
 wchar_t ch;
 int field, i, isdelim;
 char *pos, *p;
 int output;
 char *lbuf, *mlbuf;
 size_t clen, lbuflen, reallen;

 mlbuf = ((void*)0);
 while ((lbuf = fgetln(fp, &lbuflen)) != ((void*)0)) {
  reallen = lbuflen;

  if (*(lbuf + lbuflen - 1) != '\n') {

   mlbuf = malloc(lbuflen + 1);
   if (mlbuf == ((void*)0))
    err(1, "malloc");
   memcpy(mlbuf, lbuf, lbuflen);
   *(mlbuf + lbuflen) = '\n';
   lbuf = mlbuf;
   reallen++;
  }
  output = 0;
  for (isdelim = 0, p = lbuf;; p += clen) {
   clen = mbrtowc(&ch, p, lbuf + reallen - p, ((void*)0));
   if (clen == (size_t)-1 || clen == (size_t)-2) {
    warnc(EILSEQ, "%s", fname);
    free(mlbuf);
    return (1);
   }
   if (clen == 0)
    clen = 1;

   if (is_delim(ch))
    isdelim = 1;
   if (ch == '\n') {
    if (!isdelim && !sflag)
     (void)fwrite(lbuf, lbuflen, 1, stdout);
    break;
   }
  }
  if (!isdelim)
   continue;

  pos = positions + 1;
  for (field = maxval, p = lbuf; field; --field, ++pos) {
   if (*pos && output++)
    for (i = 0; dcharmb[i] != '\0'; i++)
     putchar(dcharmb[i]);
   for (;;) {
    clen = mbrtowc(&ch, p, lbuf + reallen - p,
        ((void*)0));
    if (clen == (size_t)-1 || clen == (size_t)-2) {
     warnc(EILSEQ, "%s", fname);
     free(mlbuf);
     return (1);
    }
    if (clen == 0)
     clen = 1;
    p += clen;
    if (ch == '\n' || is_delim(ch)) {

     if (wflag && ch != '\n')
      while (is_delim(*p))
       p++;
     break;
    }
    if (*pos)
     for (i = 0; i < (int)clen; i++)
      putchar(p[i - clen]);
   }
   if (ch == '\n')
    break;
  }
  if (ch != '\n') {
   if (autostop) {
    if (output)
     for (i = 0; dcharmb[i] != '\0'; i++)
      putchar(dcharmb[i]);
    for (; (ch = *p) != '\n'; ++p)
     (void)putchar(ch);
   } else
    for (; (ch = *p) != '\n'; ++p);
  }
  (void)putchar('\n');
 }
 free(mlbuf);
 return (0);
}
