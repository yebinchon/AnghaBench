
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iconv_conv (void*,char const**,size_t*,char**,size_t*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

char *
iconv_convstr(void *handle, char *dst, const char *src)
{
 char *p = dst;
 size_t inlen, outlen;
 int error;

 if (handle == ((void*)0)) {
  strcpy(dst, src);
  return dst;
 }
 inlen = outlen = strlen(src);
 error = iconv_conv(handle, ((void*)0), ((void*)0), &p, &outlen);
 if (error)
  return ((void*)0);
 error = iconv_conv(handle, &src, &inlen, &p, &outlen);
 if (error)
  return ((void*)0);
 *p = 0;
 return dst;
}
