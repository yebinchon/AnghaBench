
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;


 void* MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_NOSYNC ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 int image_swap_fd ;
 size_t image_swap_pgsz ;
 void* mmap (int *,size_t,int,int,int,size_t) ;
 size_t secsz ;

__attribute__((used)) static void *
image_file_map(int fd, off_t ofs, size_t sz, off_t *iofp)
{
 void *ptr;
 size_t unit;
 int flags, prot;
 off_t x;


 if ((x = (ofs % image_swap_pgsz)) != 0) {
     ofs -= x;
     sz += x;
     *iofp = x;
 } else
     *iofp = 0;
 unit = (secsz > image_swap_pgsz) ? secsz : image_swap_pgsz;
 assert((unit & (unit - 1)) == 0);

 flags = MAP_NOCORE | MAP_NOSYNC | MAP_SHARED;

 prot = PROT_READ | ((fd == image_swap_fd) ? PROT_WRITE : 0);
 sz = (sz + unit - 1) & ~(unit - 1);
 ptr = mmap(((void*)0), sz, prot, flags, fd, ofs);
 return ((ptr == MAP_FAILED) ? ((void*)0) : ptr);
}
