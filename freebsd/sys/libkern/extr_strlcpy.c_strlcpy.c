
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strlcpy(char * __restrict dst, const char * __restrict src, size_t dsize)
{
 const char *osrc = src;
 size_t nleft = dsize;


 if (nleft != 0) {
  while (--nleft != 0) {
   if ((*dst++ = *src++) == '\0')
    break;
  }
 }


 if (nleft == 0) {
  if (dsize != 0)
   *dst = '\0';
  while (*src++)
   ;
 }

 return(src - osrc - 1);
}
