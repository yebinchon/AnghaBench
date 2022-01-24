#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* tchunkptr ;
typedef  TYPE_2__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  scalar_t__ binmap_t ;
typedef  int /*<<< orphan*/  bindex_t ;
struct TYPE_23__ {scalar_t__ treemap; size_t dvsize; } ;
struct TYPE_22__ {struct TYPE_22__** child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t MIN_CHUNK_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t SIZE_T_BITSIZE ; 
 size_t SIZE_T_ONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 size_t FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_1__*,size_t) ; 
 TYPE_1__** FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void* FUNC21(mstate m, size_t nb) {
  tchunkptr v = 0;
  size_t rsize = -nb; /* Unsigned negation */
  tchunkptr t;
  bindex_t idx;
  FUNC7(nb, idx);
  if ((t = *FUNC19(m, idx)) != 0) {
    /* Traverse tree for this bin looking for node with size == nb */
    size_t sizebits = nb << FUNC13(idx);
    tchunkptr rst = 0;  /* The deepest untaken right subtree */
    for (;;) {
      tchunkptr rt;
      size_t trem = FUNC5(t) - nb;
      if (trem < rsize) {
	v = t;
	if ((rsize = trem) == 0)
	  break;
      }
      rt = t->child[1];
      t = t->child[(sizebits >> (SIZE_T_BITSIZE-SIZE_T_ONE)) & 1];
      if (rt != 0 && rt != t)
	rst = rt;
      if (t == 0) {
	t = rst; /* set t to least subtree holding sizes > nb */
	break;
      }
      sizebits <<= 1;
    }
  }
  if (t == 0 && v == 0) { /* set t to root of next non-empty treebin */
    binmap_t leftbits = FUNC11(FUNC8(idx)) & m->treemap;
    if (leftbits != 0) {
      bindex_t i;
      binmap_t leastbit = FUNC10(leftbits);
      FUNC6(leastbit, i);
      t = *FUNC19(m, i);
    }
  }

  while (t != 0) { /* find smallest of tree or subtree */
    size_t trem = FUNC5(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
    t = FUNC12(t);
  }

  /*  If dv is a better fit, return 0 so malloc will use it */
  if (v != 0 && rsize < (size_t)(m->dvsize - nb)) {
    if (FUNC1(FUNC14(m, v))) { /* split */
      mchunkptr r = FUNC4(v, nb);
      FUNC2(FUNC5(v) == rsize + nb);
      if (FUNC1(FUNC15(v, r))) {
	FUNC20(m, v);
	if (rsize < MIN_CHUNK_SIZE)
	  FUNC16(m, v, (rsize + nb));
	else {
	  FUNC18(m, v, nb);
	  FUNC17(r, rsize);
	  FUNC9(m, r, rsize);
	}
	return FUNC3(v);
      }
    }
    FUNC0(m);
  }
  return 0;
}