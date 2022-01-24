#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
typedef  TYPE_3__* mchunkptr ;
typedef  int flag_t ;
struct TYPE_34__ {size_t head; } ;
struct TYPE_33__ {char* base; int size; int sflags; struct TYPE_33__* next; } ;
struct TYPE_32__ {scalar_t__ top; size_t topsize; scalar_t__ footprint; scalar_t__ max_footprint; char* least_addr; TYPE_2__ seg; int /*<<< orphan*/  release_checks; int /*<<< orphan*/  magic; } ;
struct TYPE_31__ {size_t mmap_threshold; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 char* CMFAIL ; 
 size_t HALF_MAX_SIZE_T ; 
 scalar_t__ HAVE_MMAP ; 
 scalar_t__ HAVE_MORECORE ; 
 int IS_MMAPPED_BIT ; 
 int /*<<< orphan*/  MALLOC_FAILURE_ACTION ; 
 int /*<<< orphan*/  MAX_RELEASE_CHECK_RATE ; 
 scalar_t__ MORECORE_CONTIGUOUS ; 
 scalar_t__ NO_SEGMENT_TRAVERSAL ; 
 size_t PINUSE_BIT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t SYS_ALLOC_PADDING ; 
 size_t TOP_FOOT_SIZE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*) ; 
 void* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 void* FUNC19 (TYPE_1__*,size_t) ; 
 TYPE_14__ mparams ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ) ; 
 size_t FUNC21 (size_t) ; 
 void* FUNC22 (TYPE_1__*,char*,char*,size_t) ; 
 TYPE_2__* FUNC23 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC24 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,TYPE_3__*,size_t) ; 
 scalar_t__ FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 

__attribute__((used)) static void* FUNC28(mstate m, size_t nb) {
  char* tbase = CMFAIL;
  size_t tsize = 0;
  flag_t mmap_flag = 0;

  FUNC10();

  /* Directly map large chunks */
  if (FUNC26(m) && nb >= mparams.mmap_threshold) {
    void* mem = FUNC19(m, nb);
    if (mem != 0)
      return mem;
  }

  /*
    Try getting memory in any of three ways (in most-preferred to
    least-preferred order):
    1. A call to MORECORE that can normally contiguously extend memory.
       (disabled if not MORECORE_CONTIGUOUS or not HAVE_MORECORE or
       main space is mmapped or a previous contiguous call failed)
    2. A call to MMAP new space (disabled if not HAVE_MMAP).
       Note that under the default settings, if MORECORE is unable to
       fulfill a request, and HAVE_MMAP is true, then mmap is
       used as a noncontiguous system allocator. This is a useful backup
       strategy for systems with holes in address spaces -- in this case
       sbrk cannot contiguously expand the heap, but mmap may be able to
       find space.
    3. A call to MORECORE that cannot usually contiguously extend memory.
       (disabled if not HAVE_MORECORE)

   In all cases, we need to request enough bytes from system to ensure
   we can malloc nb bytes upon success, so pad with enough space for
   top_foot, plus alignment-pad to make sure we don't lose bytes if
   not on boundary, and round this up to a granularity unit.
  */

  if (MORECORE_CONTIGUOUS && !FUNC27(m)) {
    char* br = CMFAIL;
    msegmentptr ss = (m->top == 0)? 0 : FUNC23(m, (char*)m->top);
    size_t asize = 0;
    FUNC0();

    if (ss == 0) {  /* First time through or recovery */
      char* base = (char*)FUNC2(0);
      if (base != CMFAIL) {
	asize = FUNC11(nb + SYS_ALLOC_PADDING);
	/* Adjust to end on a page boundary */
	if (!FUNC17(base))
	  asize += (FUNC21((size_t)base) - (size_t)base);
	/* Can't call MORECORE if size is negative when treated as signed */
	if (asize < HALF_MAX_SIZE_T &&
	    (br = (char*)(FUNC2(asize))) == base) {
	  tbase = base;
	  tsize = asize;
	}
      }
    }
    else {
      /* Subtract out existing available top space from MORECORE request. */
      asize = FUNC11(nb - m->topsize + SYS_ALLOC_PADDING);
      /* Use mem here only if it did continuously extend old space */
      if (asize < HALF_MAX_SIZE_T &&
	  (br = (char*)(FUNC2(asize))) == ss->base+ss->size) {
	tbase = br;
	tsize = asize;
      }
    }

    if (tbase == CMFAIL) {    /* Cope with partial failure */
      if (br != CMFAIL) {    /* Try to use/extend the space we did get */
	if (asize < HALF_MAX_SIZE_T &&
	    asize < nb + SYS_ALLOC_PADDING) {
	  size_t esize = FUNC11(nb + SYS_ALLOC_PADDING - asize);
	  if (esize < HALF_MAX_SIZE_T) {
	    char* end = (char*)FUNC2(esize);
	    if (end != CMFAIL)
	      asize += esize;
	    else {            /* Can't use; try to release */
	      (void) FUNC2(-asize);
	      br = CMFAIL;
	    }
	  }
	}
      }
      if (br != CMFAIL) {    /* Use the space we did get */
	tbase = br;
	tsize = asize;
      }
      else
	FUNC9(m); /* Don't try contiguous path in the future */
    }

    FUNC3();
  }

  if (HAVE_MMAP && tbase == CMFAIL) {  /* Try MMAP */
    size_t rsize = FUNC11(nb + SYS_ALLOC_PADDING);
    if (rsize > nb) { /* Fail if wraps around zero */
      char* mp = (char*)(FUNC1(rsize));
      if (mp != CMFAIL) {
	tbase = mp;
	tsize = rsize;
	mmap_flag = IS_MMAPPED_BIT;
      }
    }
  }

  if (HAVE_MORECORE && tbase == CMFAIL) { /* Try noncontiguous MORECORE */
    size_t asize = FUNC11(nb + SYS_ALLOC_PADDING);
    if (asize < HALF_MAX_SIZE_T) {
      char* br = CMFAIL;
      char* end = CMFAIL;
      FUNC0();
      br = (char*)(FUNC2(asize));
      end = (char*)(FUNC2(0));
      FUNC3();
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

    if (!FUNC16(m)) { /* first-time initialization */
      m->seg.base = m->least_addr = tbase;
      m->seg.size = tsize;
      m->seg.sflags = mmap_flag;
      m->magic = mparams.magic;
      m->release_checks = MAX_RELEASE_CHECK_RATE;
      FUNC12(m);
#if !ONLY_MSPACES
      if (FUNC15(m))
	FUNC13(m, (mchunkptr)tbase, tsize - TOP_FOOT_SIZE);
      else
#endif
      {
	/* Offset top by embedded malloc_state */
	mchunkptr mn = FUNC20(FUNC18(m));
	FUNC13(m, mn, (size_t)((tbase + tsize) - (char*)mn) -TOP_FOOT_SIZE);
      }
    }

    else {
      /* Try to merge with an existing segment */
      msegmentptr sp = &m->seg;
      /* Only consider most recent segment if traversal suppressed */
      while (sp != 0 && tbase != sp->base + sp->size)
	sp = (NO_SEGMENT_TRAVERSAL) ? 0 : sp->next;
      if (sp != 0 &&
	  !FUNC14(sp) &&
	  (sp->sflags & IS_MMAPPED_BIT) == mmap_flag &&
	  FUNC24(sp, m->top)) { /* append */
	sp->size += tsize;
	FUNC13(m, m->top, m->topsize + tsize);
      }
      else {
	if (tbase < m->least_addr)
	  m->least_addr = tbase;
	sp = &m->seg;
	while (sp != 0 && sp->base != tbase + tsize)
	  sp = (NO_SEGMENT_TRAVERSAL) ? 0 : sp->next;
	if (sp != 0 &&
	    !FUNC14(sp) &&
	    (sp->sflags & IS_MMAPPED_BIT) == mmap_flag) {
	  char* oldbase = sp->base;
	  sp->base = tbase;
	  sp->size += tsize;
	  return FUNC22(m, tbase, oldbase, nb);
	}
	else
	  FUNC4(m, tbase, tsize, mmap_flag);
      }
    }

    if (nb < m->topsize) { /* Allocate from new or extended top space */
      size_t rsize = m->topsize -= nb;
      mchunkptr p = m->top;
      mchunkptr r = m->top = FUNC8(p, nb);
      r->head = rsize | PINUSE_BIT;
      FUNC25(m, p, nb);
      FUNC6(m, m->top);
      FUNC5(m, FUNC7(p), nb);
      return FUNC7(p);
    }
  }

  MALLOC_FAILURE_ACTION;
  return 0;
}