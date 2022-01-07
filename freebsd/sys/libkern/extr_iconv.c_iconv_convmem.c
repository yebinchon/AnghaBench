
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iconv_conv (void*,char const**,size_t*,char**,size_t*) ;
 int memcpy (void*,void const*,int) ;

void *
iconv_convmem(void *handle, void *dst, const void *src, int size)
{
 const char *s = src;
 char *d = dst;
 size_t inlen, outlen;
 int error;

 if (size == 0)
  return dst;
 if (handle == ((void*)0)) {
  memcpy(dst, src, size);
  return dst;
 }
 inlen = outlen = size;
 error = iconv_conv(handle, ((void*)0), ((void*)0), &d, &outlen);
 if (error)
  return ((void*)0);
 error = iconv_conv(handle, &s, &inlen, &d, &outlen);
 if (error)
  return ((void*)0);
 return dst;
}
