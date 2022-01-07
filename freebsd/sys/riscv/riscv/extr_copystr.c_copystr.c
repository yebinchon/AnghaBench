
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;

int
copystr(const void * __restrict kfaddr, void * __restrict kdaddr, size_t len,
    size_t * __restrict lencopied)
{
 const char *src;
 size_t pos;
 char *dst;
 int error;

 error = ENAMETOOLONG;
 src = kfaddr;
 dst = kdaddr;
 for (pos = 0; pos < len; pos++) {
  dst[pos] = src[pos];
  if (src[pos] == '\0') {

   pos++;
   error = 0;
   break;
  }
 }

 if (lencopied != ((void*)0))
  *lencopied = pos;

 return (error);
}
