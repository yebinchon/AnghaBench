
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static __inline int
ixgbe_bcopy(void *restrict _src, void *restrict _dst, int l)
{
 uint64_t *src = _src;
 uint64_t *dst = _dst;

 for (; l > 0; l -= 32) {
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
 }
 return (0);
}
