
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,int ) ;
 int st_mult (size_t,size_t) ;

__attribute__((used)) static inline void copy_array(void *dst, const void *src, size_t n, size_t size)
{
 if (n)
  memcpy(dst, src, st_mult(size, n));
}
