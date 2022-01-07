
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int MAX_LIMIT ;
 scalar_t__ errno ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char*) ;

__attribute__((used)) static int
open_2(void)
{
 iconv_t cd[MAX_LIMIT];
 int i, ret;

 errno = 0;
 for (i = 0; i < MAX_LIMIT; i++) {
  cd[i] = iconv_open("ASCII", "UTF8");
  if (cd[i] == (iconv_t)-1)
   break;
 }

 ret = (cd[i] == (iconv_t)-1) && ((errno == ENFILE) ||
     (errno == EMFILE)) ? 0 : 1;
 for (; i > 0; i--)
  iconv_close(cd[i]);
 return (ret);
}
