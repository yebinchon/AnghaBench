#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tchunkptr ;
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  int /*<<< orphan*/  binmap_t ;
typedef  int /*<<< orphan*/  bindex_t ;
struct TYPE_10__ {int /*<<< orphan*/  treemap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t MIN_CHUNK_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void* FUNC17(mstate m, size_t nb) {
  tchunkptr t, v;
  size_t rsize;
  bindex_t i;
  binmap_t leastbit = FUNC7(m->treemap);
  FUNC6(leastbit, i);
  v = t = *FUNC15(m, i);
  rsize = FUNC5(t) - nb;

  while ((t = FUNC8(t)) != 0) {
    size_t trem = FUNC5(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
  }

  if (FUNC1(FUNC9(m, v))) {
    mchunkptr r = FUNC4(v, nb);
    FUNC2(FUNC5(v) == rsize + nb);
    if (FUNC1(FUNC10(v, r))) {
      FUNC16(m, v);
      if (rsize < MIN_CHUNK_SIZE)
	FUNC12(m, v, (rsize + nb));
      else {
	FUNC14(m, v, nb);
	FUNC13(r, rsize);
	FUNC11(m, r, rsize);
      }
      return FUNC3(v);
    }
  }

  FUNC0(m);
  return 0;
}