
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;
typedef int FILE ;


 scalar_t__ E2BIG ;
 scalar_t__ EINVAL ;
 int EXIT_FAILURE ;
 int ICONV_SET_DISCARD_ILSEQ ;
 int INBUFSIZE ;
 int OUTBUFSIZE ;
 size_t __iconv (int ,char**,size_t*,char**,size_t*,int ,size_t*) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 scalar_t__ feof (int *) ;
 int fflush (int ) ;
 size_t fread (char*,int,int,int *) ;
 int fwrite (char*,int,int,int ) ;
 size_t iconv (int ,int *,int *,char**,size_t*) ;
 int iconvctl (int ,int ,void*) ;
 int memmove (char*,char*,size_t) ;
 int stdout ;
 int warnx (char*,unsigned long long) ;

__attribute__((used)) static int
do_conv(FILE *fp, iconv_t cd, bool silent, bool hide_invalid)
{
 char inbuf[INBUFSIZE], outbuf[OUTBUFSIZE], *in, *out;
 unsigned long long invalids;
 size_t inbytes, outbytes, ret;

 int arg = (int)hide_invalid;
 if (iconvctl(cd, ICONV_SET_DISCARD_ILSEQ, (void *)&arg) == -1)
  err(EXIT_FAILURE, "iconvctl(DISCARD_ILSEQ, %d)", arg);

 invalids = 0;
 while ((inbytes = fread(inbuf, 1, INBUFSIZE, fp)) > 0) {
  in = inbuf;
  while (inbytes > 0) {
   size_t inval;

   out = outbuf;
   outbytes = OUTBUFSIZE;
   ret = __iconv(cd, &in, &inbytes, &out, &outbytes,
       0, &inval);
   invalids += inval;
   if (outbytes < OUTBUFSIZE)
    (void)fwrite(outbuf, 1, OUTBUFSIZE - outbytes,
        stdout);
   if (ret == (size_t)-1 && errno != E2BIG) {
    if (errno != EINVAL || in == inbuf)
     err(EXIT_FAILURE, "iconv()");


    (void)memmove(inbuf, in, inbytes);
    ret = fread(inbuf + inbytes, 1,
        INBUFSIZE - inbytes, fp);
    if (ret == 0) {
     fflush(stdout);
     if (feof(fp))
      errx(EXIT_FAILURE,
          "unexpected end of file; "
          "the last character is "
          "incomplete.");
     else
      err(EXIT_FAILURE, "fread()");
    }
    in = inbuf;
    inbytes += ret;
   }
  }
 }

 outbytes = OUTBUFSIZE;
 out = outbuf;
 ret = iconv(cd, ((void*)0), ((void*)0), &out, &outbytes);
 if (ret == (size_t)-1)
  err(EXIT_FAILURE, "iconv()");
 if (outbytes < OUTBUFSIZE)
  (void)fwrite(outbuf, 1, OUTBUFSIZE - outbytes, stdout);

 if (invalids > 0 && !silent)
  warnx("warning: invalid characters: %llu", invalids);

 return (invalids > 0);
}
