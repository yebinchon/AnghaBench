
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;


 int assert (int) ;
 int ftruncate (int ,size_t) ;
 int image_swap_fd ;
 size_t image_swap_pgsz ;
 size_t image_swap_size ;
 size_t secsz ;

__attribute__((used)) static off_t
image_swap_alloc(size_t size)
{
 off_t ofs;
 size_t unit;

 unit = (secsz > image_swap_pgsz) ? secsz : image_swap_pgsz;
 assert((unit & (unit - 1)) == 0);

 size = (size + unit - 1) & ~(unit - 1);

 ofs = image_swap_size;
 image_swap_size += size;
 if (ftruncate(image_swap_fd, image_swap_size) == -1) {
  image_swap_size = ofs;
  ofs = -1LL;
 }
 return (ofs);
}
