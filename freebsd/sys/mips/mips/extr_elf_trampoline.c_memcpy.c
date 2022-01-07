
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline void *
memcpy(void *dst, const void *src, size_t len)
{
 const char *s = src;
     char *d = dst;

 while (len) {
  if (0 && len >= 4 && !((vm_offset_t)d & 3) &&
      !((vm_offset_t)s & 3)) {
   *(uint32_t *)d = *(uint32_t *)s;
   s += 4;
   d += 4;
   len -= 4;
  } else {
   *d++ = *s++;
   len--;
  }
 }
 return (dst);
}
