#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mspace ;
typedef  TYPE_2__* mchunkptr ;
typedef  int binmap_t ;
typedef  int bindex_t ;
struct TYPE_30__ {size_t head; struct TYPE_30__* fd; } ;
struct TYPE_29__ {int smallmap; size_t dvsize; scalar_t__ treemap; size_t topsize; TYPE_2__* top; TYPE_2__* dv; } ;

/* Variables and functions */
 size_t MAX_REQUEST ; 
 size_t MAX_SIZE_T ; 
 size_t MAX_SMALL_REQUEST ; 
 size_t MIN_CHUNK_SIZE ; 
 size_t MIN_REQUEST ; 
 size_t PINUSE_BIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int SIZE_T_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (TYPE_2__*,size_t) ; 
 size_t FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 size_t FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int FUNC19 (size_t) ; 
 size_t FUNC20 (int) ; 
 TYPE_2__* FUNC21 (TYPE_1__*,int) ; 
 void* FUNC22 (TYPE_1__*,size_t) ; 
 void* FUNC23 (TYPE_1__*,size_t) ; 
 void* FUNC24 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ; 

void* FUNC26(mspace msp, size_t bytes) {
  mstate ms = (mstate)msp;
  if (!FUNC13(ms)) {
    FUNC2(ms,ms);
    return 0;
  }
  if (!FUNC1(ms)) {
    void* mem;
    size_t nb;
    if (bytes <= MAX_SMALL_REQUEST) {
      bindex_t idx;
      binmap_t smallbits;
      nb = (bytes < MIN_REQUEST)? MIN_CHUNK_SIZE : FUNC14(bytes);
      idx = FUNC19(nb);
      smallbits = ms->smallmap >> idx;

      if ((smallbits & 0x3U) != 0) { /* Remainderless fit to a smallbin. */
	mchunkptr b, p;
	idx += ~smallbits & 1;       /* Uses next bin if idx empty */
	b = FUNC21(ms, idx);
	p = b->fd;
	FUNC3(FUNC8(p) == FUNC20(idx));
	FUNC25(ms, b, p, idx);
	FUNC16(ms, p, FUNC20(idx));
	mem = FUNC6(p);
	FUNC4(ms, mem, nb);
	goto postaction;
      }

      else if (nb > ms->dvsize) {
	if (smallbits != 0) { /* Use chunk in next nonempty smallbin */
	  mchunkptr b, p, r;
	  size_t rsize;
	  bindex_t i;
	  binmap_t leftbits = (smallbits << idx) & FUNC12(FUNC10(idx));
	  binmap_t leastbit = FUNC11(leftbits);
	  FUNC9(leastbit, i);
	  b = FUNC21(ms, i);
	  p = b->fd;
	  FUNC3(FUNC8(p) == FUNC20(i));
	  FUNC25(ms, b, p, i);
	  rsize = FUNC20(i) - nb;
	  /* Fit here cannot be remainderless if 4byte sizes */
	  if (SIZE_T_SIZE != 4 && rsize < MIN_CHUNK_SIZE)
	    FUNC16(ms, p, FUNC20(i));
	  else {
	    FUNC18(ms, p, nb);
	    r = FUNC7(p, nb);
	    FUNC17(r, rsize);
	    FUNC15(ms, r, rsize);
	  }
	  mem = FUNC6(p);
	  FUNC4(ms, mem, nb);
	  goto postaction;
	}

	else if (ms->treemap != 0 && (mem = FUNC24(ms, nb)) != 0) {
	  FUNC4(ms, mem, nb);
	  goto postaction;
	}
      }
    }
    else if (bytes >= MAX_REQUEST)
      nb = MAX_SIZE_T; /* Too big to allocate. Force failure (in sys alloc) */
    else {
      nb = FUNC14(bytes);
      if (ms->treemap != 0 && (mem = FUNC23(ms, nb)) != 0) {
	FUNC4(ms, mem, nb);
	goto postaction;
      }
    }

    if (nb <= ms->dvsize) {
      size_t rsize = ms->dvsize - nb;
      mchunkptr p = ms->dv;
      if (rsize >= MIN_CHUNK_SIZE) { /* split dv */
	mchunkptr r = ms->dv = FUNC7(p, nb);
	ms->dvsize = rsize;
	FUNC17(r, rsize);
	FUNC18(ms, p, nb);
      }
      else { /* exhaust dv */
	size_t dvs = ms->dvsize;
	ms->dvsize = 0;
	ms->dv = 0;
	FUNC16(ms, p, dvs);
      }
      mem = FUNC6(p);
      FUNC4(ms, mem, nb);
      goto postaction;
    }

    else if (nb < ms->topsize) { /* Split top */
      size_t rsize = ms->topsize -= nb;
      mchunkptr p = ms->top;
      mchunkptr r = ms->top = FUNC7(p, nb);
      r->head = rsize | PINUSE_BIT;
      FUNC18(ms, p, nb);
      mem = FUNC6(p);
      FUNC5(ms, ms->top);
      FUNC4(ms, mem, nb);
      goto postaction;
    }

    mem = FUNC22(ms, nb);

  postaction:
    FUNC0(ms);
    return mem;
  }

  return 0;
}