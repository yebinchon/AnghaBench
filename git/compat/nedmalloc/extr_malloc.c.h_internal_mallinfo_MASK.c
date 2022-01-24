#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct mallinfo {size_t arena; size_t ordblks; size_t fordblks; size_t keepcost; scalar_t__ uordblks; int /*<<< orphan*/  usmblks; scalar_t__ hblkhd; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
typedef  TYPE_3__* mchunkptr ;
struct TYPE_18__ {scalar_t__ head; } ;
struct TYPE_17__ {struct TYPE_17__* next; int /*<<< orphan*/  base; } ;
struct TYPE_16__ {size_t topsize; scalar_t__ footprint; int /*<<< orphan*/  max_footprint; TYPE_3__* top; TYPE_2__ seg; } ;

/* Variables and functions */
 scalar_t__ FENCEPOST_HEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t SIZE_T_ONE ; 
 size_t TOP_FOOT_SIZE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static struct mallinfo FUNC10(mstate m) {
  struct mallinfo nm = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  FUNC6();
  if (!FUNC1(m)) {
    FUNC3(m);
    if (FUNC7(m)) {
      size_t nfree = SIZE_T_ONE; /* top always free */
      size_t mfree = m->topsize + TOP_FOOT_SIZE;
      size_t sum = mfree;
      msegmentptr s = &m->seg;
      while (s != 0) {
	mchunkptr q = FUNC2(s->base);
	while (FUNC9(s, q) &&
	       q != m->top && q->head != FENCEPOST_HEAD) {
	  size_t sz = FUNC4(q);
	  sum += sz;
	  if (!FUNC5(q)) {
	    mfree += sz;
	    ++nfree;
	  }
	  q = FUNC8(q);
	}
	s = s->next;
      }

      nm.arena    = sum;
      nm.ordblks  = nfree;
      nm.hblkhd   = m->footprint - sum;
      nm.usmblks  = m->max_footprint;
      nm.uordblks = m->footprint - mfree;
      nm.fordblks = mfree;
      nm.keepcost = m->topsize;
    }

    FUNC0(m);
  }
  return nm;
}