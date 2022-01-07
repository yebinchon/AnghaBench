
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int uint32_t ;
typedef int iconv_t ;


 int E2BIG ;
 int errno ;
 int iconv (int ,char const**,size_t*,char**,size_t*) ;
 int iconv_open (char*,char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
conv_2big(void)
{
 iconv_t cd;
 size_t inbytesleft, outbytesleft;
 const char *inptr;
 char *outptr;
 uint32_t inbuf[4];
 uint32_t outbuf[2];
 int ret;

 if ((cd = iconv_open("ASCII", "ASCII")) == (iconv_t)-1)
  return (1);

 inptr = (const char *)inbuf;
 outptr = (char *)outbuf;
 inbytesleft = 16;
 outbytesleft = 8;

 errno = 0;
 ret = iconv(cd, &inptr, &inbytesleft, &outptr, &outbytesleft);
 if (((const uint8_t *)inptr - (uint8_t *)inbuf == 8) && (inbytesleft == 8) &&
     (outbytesleft == 0) && ((uint8_t *)outptr - (uint8_t *)outbuf == 8) &&
     (errno == E2BIG) && ((size_t)ret == (size_t)-1))
  return (0);
 else
  return (1);
}
