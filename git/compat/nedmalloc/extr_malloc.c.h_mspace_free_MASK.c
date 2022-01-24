#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tchunkptr ;
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mspace ;
typedef  TYPE_2__* mchunkptr ;
struct TYPE_40__ {size_t prev_foot; int head; } ;
struct TYPE_39__ {size_t footprint; size_t dvsize; size_t topsize; scalar_t__ release_checks; TYPE_2__* dv; TYPE_2__* top; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t) ; 
 int INUSE_BITS ; 
 size_t IS_MMAPPED_BIT ; 
 scalar_t__ MMAP_FOOT_PAD ; 
 size_t PINUSE_BIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*,size_t) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,size_t) ; 
 size_t FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_1__* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,size_t) ; 
 scalar_t__ FUNC14 (size_t) ; 
 TYPE_2__* FUNC15 (void*) ; 
 int FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC25 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,TYPE_2__*,size_t) ; 

void FUNC28(mspace msp, void* mem) {
  if (mem != 0) {
    mchunkptr p  = FUNC15(mem);
#if FOOTERS
    mstate fm = get_mstate_for(p);
#else /* FOOTERS */
    mstate fm = (mstate)msp;
#endif /* FOOTERS */
    if (!FUNC18(fm)) {
      FUNC4(fm, p);
      return;
    }
    if (!FUNC2(fm)) {
      FUNC6(fm, p);
      if (FUNC3(FUNC16(fm, p) && FUNC17(p))) {
	size_t psize = FUNC9(p);
	mchunkptr next = FUNC8(p, psize);
	if (!FUNC21(p)) {
	  size_t prevsize = p->prev_foot;
	  if ((prevsize & IS_MMAPPED_BIT) != 0) {
	    prevsize &= ~IS_MMAPPED_BIT;
	    psize += prevsize + MMAP_FOOT_PAD;
	    if (FUNC0((char*)p - prevsize, psize) == 0)
	      fm->footprint -= psize;
	    goto postaction;
	  }
	  else {
	    mchunkptr prev = FUNC7(p, prevsize);
	    psize += prevsize;
	    p = prev;
	    if (FUNC3(FUNC16(fm, prev))) { /* consolidate backward */
	      if (p != fm->dv) {
		FUNC27(fm, p, prevsize);
	      }
	      else if ((next->head & INUSE_BITS) == INUSE_BITS) {
		fm->dvsize = psize;
		FUNC23(p, psize, next);
		goto postaction;
	      }
	    }
	    else
	      goto erroraction;
	  }
	}

	if (FUNC3(FUNC19(p, next) && FUNC20(next))) {
	  if (!FUNC10(next)) {  /* consolidate forward */
	    if (next == fm->top) {
	      size_t tsize = fm->topsize += psize;
	      fm->top = p;
	      p->head = tsize | PINUSE_BIT;
	      if (p == fm->dv) {
		fm->dv = 0;
		fm->dvsize = 0;
	      }
	      if (FUNC25(fm, tsize))
		FUNC26(fm, 0);
	      goto postaction;
	    }
	    else if (next == fm->dv) {
	      size_t dsize = fm->dvsize += psize;
	      fm->dv = p;
	      FUNC24(p, dsize);
	      goto postaction;
	    }
	    else {
	      size_t nsize = FUNC9(next);
	      psize += nsize;
	      FUNC27(fm, next, nsize);
	      FUNC24(p, psize);
	      if (p == fm->dv) {
		fm->dvsize = psize;
		goto postaction;
	      }
	    }
	  }
	  else
	    FUNC23(p, psize, next);

	  if (FUNC14(psize)) {
	    FUNC13(fm, p, psize);
	    FUNC5(fm, p);
	  }
	  else {
	    tchunkptr tp = (tchunkptr)p;
	    FUNC12(fm, tp, psize);
	    FUNC5(fm, p);
	    if (--fm->release_checks == 0)
	      FUNC22(fm);
	  }
	  goto postaction;
	}
      }
    erroraction:
      FUNC4(fm, p);
    postaction:
      FUNC1(fm);
    }
  }
}