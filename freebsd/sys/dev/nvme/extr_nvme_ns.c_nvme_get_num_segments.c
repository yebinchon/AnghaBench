
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static uint32_t
nvme_get_num_segments(uint64_t addr, uint64_t size, uint32_t align)
{
 uint32_t num_segs, offset, remainder;

 if (align == 0)
  return (1);

 KASSERT((align & (align - 1)) == 0, ("alignment not power of 2\n"));

 num_segs = size / align;
 remainder = size & (align - 1);
 offset = addr & (align - 1);
 if (remainder > 0 || offset > 0)
  num_segs += 1 + (remainder + offset - 1) / align;
 return (num_segs);
}
