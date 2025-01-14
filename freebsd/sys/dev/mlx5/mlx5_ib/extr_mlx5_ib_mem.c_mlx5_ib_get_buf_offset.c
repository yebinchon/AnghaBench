
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int EINVAL ;
 int ilog2 (int) ;

int mlx5_ib_get_buf_offset(u64 addr, int page_shift, u32 *offset)
{
 u64 page_size;
 u64 page_mask;
 u64 off_size;
 u64 off_mask;
 u64 buf_off;

 page_size = (u64)1 << page_shift;
 page_mask = page_size - 1;
 buf_off = addr & page_mask;
 off_size = page_size >> 6;
 off_mask = off_size - 1;

 if (buf_off & off_mask)
  return -EINVAL;

 *offset = buf_off >> ilog2(off_size);
 return 0;
}
