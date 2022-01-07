
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char*) ;

__attribute__((used)) static int
open_1(void)
{
 iconv_t cd;

 errno = 0;
 cd = iconv_open("nonexisting", "foobar");

 if ((cd == (iconv_t)-1) && (errno == EINVAL))
  return (0);
 else {
  iconv_close(cd);
  return (1);
 }
}
