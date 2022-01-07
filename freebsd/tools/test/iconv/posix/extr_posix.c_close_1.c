
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int EBADF ;
 int errno ;
 int iconv_close (int ) ;

__attribute__((used)) static int
close_1(void)
{
 iconv_t cd = (iconv_t)-1;

 return ((iconv_close(cd) == -1) && (errno = EBADF) ? 0 : 1);
}
