
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DONTNEED ;
 size_t image_swap_pgsz ;
 scalar_t__ madvise (void*,size_t,int ) ;
 int munmap (void*,size_t) ;
 size_t secsz ;
 int warn (char*) ;

__attribute__((used)) static int
image_file_unmap(void *buffer, size_t sz)
{
 size_t unit;

 unit = (secsz > image_swap_pgsz) ? secsz : image_swap_pgsz;
 sz = (sz + unit - 1) & ~(unit - 1);
 if (madvise(buffer, sz, MADV_DONTNEED) != 0)
  warn("madvise");
 munmap(buffer, sz);
 return (0);
}
