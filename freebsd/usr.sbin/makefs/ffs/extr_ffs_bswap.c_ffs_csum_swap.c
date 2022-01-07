
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct csum {int dummy; } ;


 int bswap32 (int ) ;

void
ffs_csum_swap(struct csum *o, struct csum *n, int size)
{
 size_t i;
 u_int32_t *oint, *nint;

 oint = (u_int32_t*)o;
 nint = (u_int32_t*)n;

 for (i = 0; i < size / sizeof(u_int32_t); i++)
  nint[i] = bswap32(oint[i]);
}
