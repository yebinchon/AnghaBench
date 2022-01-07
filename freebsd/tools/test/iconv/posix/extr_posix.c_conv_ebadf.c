
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 scalar_t__ EBADF ;
 scalar_t__ errno ;
 size_t iconv (int ,int *,int ,int *,int ) ;

__attribute__((used)) static int
conv_ebadf(void)
{
 iconv_t cd = (iconv_t)-1;

 errno = 0;
 return ((iconv(cd, ((void*)0), 0, ((void*)0), 0) == (size_t)-1 && errno == EBADF) ? 0 : 1);
}
