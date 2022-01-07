
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_14__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* msegmentptr ;
typedef TYPE_3__* mchunkptr ;
typedef int flag_t ;
struct TYPE_34__ {size_t head; } ;
struct TYPE_33__ {char* base; int size; int sflags; struct TYPE_33__* next; } ;
struct TYPE_32__ {scalar_t__ top; size_t topsize; scalar_t__ footprint; scalar_t__ max_footprint; char* least_addr; TYPE_2__ seg; int release_checks; int magic; } ;
struct TYPE_31__ {size_t mmap_threshold; int magic; } ;


 int ACQUIRE_MALLOC_GLOBAL_LOCK () ;
 scalar_t__ CALL_MMAP (size_t) ;
 scalar_t__ CALL_MORECORE (size_t) ;
 char* CMFAIL ;
 size_t HALF_MAX_SIZE_T ;
 scalar_t__ HAVE_MMAP ;
 scalar_t__ HAVE_MORECORE ;
 int IS_MMAPPED_BIT ;
 int MALLOC_FAILURE_ACTION ;
 int MAX_RELEASE_CHECK_RATE ;
 scalar_t__ MORECORE_CONTIGUOUS ;
 scalar_t__ NO_SEGMENT_TRAVERSAL ;
 size_t PINUSE_BIT ;
 int RELEASE_MALLOC_GLOBAL_LOCK () ;
 size_t SYS_ALLOC_PADDING ;
 size_t TOP_FOOT_SIZE ;
 int add_segment (TYPE_1__*,char*,size_t,int) ;
 int check_malloced_chunk (TYPE_1__*,void*,size_t) ;
 int check_top_chunk (TYPE_1__*,TYPE_3__*) ;
 void* chunk2mem (TYPE_3__*) ;
 TYPE_3__* chunk_plus_offset (TYPE_3__*,size_t) ;
 int disable_contiguous (TYPE_1__*) ;
 int ensure_initialization () ;
 size_t granularity_align (size_t) ;
 int init_bins (TYPE_1__*) ;
 int init_top (TYPE_1__*,TYPE_3__*,size_t) ;
 int is_extern_segment (TYPE_2__*) ;
 scalar_t__ is_global (TYPE_1__*) ;
 int is_initialized (TYPE_1__*) ;
 int is_page_aligned (char*) ;
 int mem2chunk (TYPE_1__*) ;
 void* mmap_alloc (TYPE_1__*,size_t) ;
 TYPE_14__ mparams ;
 TYPE_3__* next_chunk (int ) ;
 size_t page_align (size_t) ;
 void* prepend_alloc (TYPE_1__*,char*,char*,size_t) ;
 TYPE_2__* segment_holding (TYPE_1__*,char*) ;
 scalar_t__ segment_holds (TYPE_2__*,scalar_t__) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_1__*,TYPE_3__*,size_t) ;
 scalar_t__ use_mmap (TYPE_1__*) ;
 int use_noncontiguous (TYPE_1__*) ;

__attribute__((used)) static void* sys_alloc(mstate m, size_t nb) {
  char* tbase = CMFAIL;
  size_t tsize = 0;
  flag_t mmap_flag = 0;

  ensure_initialization();


  if (use_mmap(m) && nb >= mparams.mmap_threshold) {
    void* mem = mmap_alloc(m, nb);
    if (mem != 0)
      return mem;
  }
  if (MORECORE_CONTIGUOUS && !use_noncontiguous(m)) {
    char* br = CMFAIL;
    msegmentptr ss = (m->top == 0)? 0 : segment_holding(m, (char*)m->top);
    size_t asize = 0;
    ACQUIRE_MALLOC_GLOBAL_LOCK();

    if (ss == 0) {
      char* base = (char*)CALL_MORECORE(0);
      if (base != CMFAIL) {
 asize = granularity_align(nb + SYS_ALLOC_PADDING);

 if (!is_page_aligned(base))
   asize += (page_align((size_t)base) - (size_t)base);

 if (asize < HALF_MAX_SIZE_T &&
     (br = (char*)(CALL_MORECORE(asize))) == base) {
   tbase = base;
   tsize = asize;
 }
      }
    }
    else {

      asize = granularity_align(nb - m->topsize + SYS_ALLOC_PADDING);

      if (asize < HALF_MAX_SIZE_T &&
   (br = (char*)(CALL_MORECORE(asize))) == ss->base+ss->size) {
 tbase = br;
 tsize = asize;
      }
    }

    if (tbase == CMFAIL) {
      if (br != CMFAIL) {
 if (asize < HALF_MAX_SIZE_T &&
     asize < nb + SYS_ALLOC_PADDING) {
   size_t esize = granularity_align(nb + SYS_ALLOC_PADDING - asize);
   if (esize < HALF_MAX_SIZE_T) {
     char* end = (char*)CALL_MORECORE(esize);
     if (end != CMFAIL)
       asize += esize;
     else {
       (void) CALL_MORECORE(-asize);
       br = CMFAIL;
     }
   }
 }
      }
      if (br != CMFAIL) {
 tbase = br;
 tsize = asize;
      }
      else
 disable_contiguous(m);
    }

    RELEASE_MALLOC_GLOBAL_LOCK();
  }

  if (HAVE_MMAP && tbase == CMFAIL) {
    size_t rsize = granularity_align(nb + SYS_ALLOC_PADDING);
    if (rsize > nb) {
      char* mp = (char*)(CALL_MMAP(rsize));
      if (mp != CMFAIL) {
 tbase = mp;
 tsize = rsize;
 mmap_flag = IS_MMAPPED_BIT;
      }
    }
  }

  if (HAVE_MORECORE && tbase == CMFAIL) {
    size_t asize = granularity_align(nb + SYS_ALLOC_PADDING);
    if (asize < HALF_MAX_SIZE_T) {
      char* br = CMFAIL;
      char* end = CMFAIL;
      ACQUIRE_MALLOC_GLOBAL_LOCK();
      br = (char*)(CALL_MORECORE(asize));
      end = (char*)(CALL_MORECORE(0));
      RELEASE_MALLOC_GLOBAL_LOCK();
      if (br != CMFAIL && end != CMFAIL && br < end) {
 size_t ssize = end - br;
 if (ssize > nb + TOP_FOOT_SIZE) {
   tbase = br;
   tsize = ssize;
 }
      }
    }
  }

  if (tbase != CMFAIL) {

    if ((m->footprint += tsize) > m->max_footprint)
      m->max_footprint = m->footprint;

    if (!is_initialized(m)) {
      m->seg.base = m->least_addr = tbase;
      m->seg.size = tsize;
      m->seg.sflags = mmap_flag;
      m->magic = mparams.magic;
      m->release_checks = MAX_RELEASE_CHECK_RATE;
      init_bins(m);

      if (is_global(m))
 init_top(m, (mchunkptr)tbase, tsize - TOP_FOOT_SIZE);
      else

      {

 mchunkptr mn = next_chunk(mem2chunk(m));
 init_top(m, mn, (size_t)((tbase + tsize) - (char*)mn) -TOP_FOOT_SIZE);
      }
    }

    else {

      msegmentptr sp = &m->seg;

      while (sp != 0 && tbase != sp->base + sp->size)
 sp = (NO_SEGMENT_TRAVERSAL) ? 0 : sp->next;
      if (sp != 0 &&
   !is_extern_segment(sp) &&
   (sp->sflags & IS_MMAPPED_BIT) == mmap_flag &&
   segment_holds(sp, m->top)) {
 sp->size += tsize;
 init_top(m, m->top, m->topsize + tsize);
      }
      else {
 if (tbase < m->least_addr)
   m->least_addr = tbase;
 sp = &m->seg;
 while (sp != 0 && sp->base != tbase + tsize)
   sp = (NO_SEGMENT_TRAVERSAL) ? 0 : sp->next;
 if (sp != 0 &&
     !is_extern_segment(sp) &&
     (sp->sflags & IS_MMAPPED_BIT) == mmap_flag) {
   char* oldbase = sp->base;
   sp->base = tbase;
   sp->size += tsize;
   return prepend_alloc(m, tbase, oldbase, nb);
 }
 else
   add_segment(m, tbase, tsize, mmap_flag);
      }
    }

    if (nb < m->topsize) {
      size_t rsize = m->topsize -= nb;
      mchunkptr p = m->top;
      mchunkptr r = m->top = chunk_plus_offset(p, nb);
      r->head = rsize | PINUSE_BIT;
      set_size_and_pinuse_of_inuse_chunk(m, p, nb);
      check_top_chunk(m, m->top);
      check_malloced_chunk(m, chunk2mem(p), nb);
      return chunk2mem(p);
    }
  }

  MALLOC_FAILURE_ACTION;
  return 0;
}
