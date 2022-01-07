
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mchunkptr ;


 size_t chunksize (int ) ;
 scalar_t__ cinuse (int ) ;
 int mem2chunk (void*) ;
 size_t overhead_for (int ) ;

size_t dlmalloc_usable_size(void* mem) {
  if (mem != 0) {
    mchunkptr p = mem2chunk(mem);
    if (cinuse(p))
      return chunksize(p) - overhead_for(p);
  }
  return 0;
}
