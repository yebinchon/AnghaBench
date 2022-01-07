
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int off_t ;
typedef int buf2 ;
typedef int buf1 ;


 int DIFF_EXIT ;
 int ERR_EXIT ;
 int PATH_MAX ;
 int diffmsg (char const*,char const*,int,int) ;
 int eofmsg (char const*) ;
 int err (int ,char*,char const*) ;
 int exit (int ) ;
 scalar_t__ lflag ;
 int printf (char*,long long,char,char) ;
 int readlink (char const*,char*,int) ;
 int sflag ;
 scalar_t__ xflag ;

void
c_link(const char *file1, off_t skip1, const char *file2, off_t skip2)
{
 char buf1[PATH_MAX], *p1;
 char buf2[PATH_MAX], *p2;
 int dfound, len1, len2;
 off_t byte;
 u_char ch;

 if ((len1 = readlink(file1, buf1, sizeof(buf1) - 1)) < 0) {
  if (!sflag)
   err(ERR_EXIT, "%s", file1);
  else
   exit(ERR_EXIT);
 }

 if ((len2 = readlink(file2, buf2, sizeof(buf2) - 1)) < 0) {
  if (!sflag)
   err(ERR_EXIT, "%s", file2);
  else
   exit(ERR_EXIT);
 }

 if (skip1 > len1)
  skip1 = len1;
 buf1[len1] = '\0';

 if (skip2 > len2)
  skip2 = len2;
 buf2[len2] = '\0';

 dfound = 0;
 byte = 1;
 for (p1 = buf1 + skip1, p2 = buf2 + skip2; *p1 && *p2; p1++, p2++) {
  if ((ch = *p1) != *p2) {
   if (xflag) {
    dfound = 1;
    (void)printf("%08llx %02x %02x\n",
        (long long)byte - 1, ch, *p2);
   } else if (lflag) {
    dfound = 1;
    (void)printf("%6lld %3o %3o\n",
        (long long)byte, ch, *p2);
   } else
    diffmsg(file1, file2, byte, 1);

  }
  byte++;
 }

 if (*p1 || *p2)
  eofmsg (*p1 ? file2 : file1);
 if (dfound)
  exit(DIFF_EXIT);
}
