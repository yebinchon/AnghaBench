
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstate ;
typedef int mspace ;


 size_t MAX_SIZE_T ;
 int USAGE_ERROR_ACTION (int ,int ) ;
 scalar_t__ calloc_must_clear (int ) ;
 void* internal_malloc (int ,size_t) ;
 int mem2chunk (void*) ;
 int memset (void*,int ,size_t) ;
 int ok_magic (int ) ;

void* mspace_calloc(mspace msp, size_t n_elements, size_t elem_size) {
  void* mem;
  size_t req = 0;
  mstate ms = (mstate)msp;
  if (!ok_magic(ms)) {
    USAGE_ERROR_ACTION(ms,ms);
    return 0;
  }
  if (n_elements != 0) {
    req = n_elements * elem_size;
    if (((n_elements | elem_size) & ~(size_t)0xffff) &&
 (req / n_elements != elem_size))
      req = MAX_SIZE_T;
  }
  mem = internal_malloc(ms, req);
  if (mem != 0 && calloc_must_clear(mem2chunk(mem)))
    memset(mem, 0, req);
  return mem;
}
