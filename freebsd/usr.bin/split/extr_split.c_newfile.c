
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int EX_IOERR ;
 int EX_USAGE ;
 int LONG_MAX ;
 scalar_t__ dflag ;
 int err (int ,char*,char*) ;
 int errx (int ,char*,...) ;
 int file_open ;
 int fileno (int ) ;
 char* fname ;
 int freopen (char*,char*,int ) ;
 int ofd ;
 int stdout ;
 int strlen (char*) ;
 long sufflen ;

__attribute__((used)) static void
newfile(void)
{
 long i, maxfiles, tfnum;
 static long fnum;
 static char *fpnt;
 char beg, end;
 int pattlen;

 if (ofd == -1) {
  if (fname[0] == '\0') {
   fname[0] = 'x';
   fpnt = fname + 1;
  } else {
   fpnt = fname + strlen(fname);
  }
  ofd = fileno(stdout);
 }

 if (dflag) {
  beg = '0';
  end = '9';
 }
 else {
  beg = 'a';
  end = 'z';
 }
 pattlen = end - beg + 1;


 for (maxfiles = 1, i = 0; i < sufflen; i++)
  if (LONG_MAX / pattlen < maxfiles)
   errx(EX_USAGE, "suffix is too long (max %ld)", i);
  else
   maxfiles *= pattlen;

 if (fnum == maxfiles)
  errx(EX_DATAERR, "too many files");


 tfnum = fnum;
 i = sufflen - 1;
 do {
  fpnt[i] = tfnum % pattlen + beg;
  tfnum /= pattlen;
 } while (i-- > 0);
 fpnt[sufflen] = '\0';

 ++fnum;
 if (!freopen(fname, "w", stdout))
  err(EX_IOERR, "%s", fname);
 file_open = 1;
}
