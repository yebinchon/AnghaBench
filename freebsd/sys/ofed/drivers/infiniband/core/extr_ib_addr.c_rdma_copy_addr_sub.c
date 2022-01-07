
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static inline void
rdma_copy_addr_sub(u8 *dst, const u8 *src, unsigned min, unsigned max)
{
 if (min > max)
  min = max;
 memcpy(dst, src, min);
 memset(dst + min, 0, max - min);
}
