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
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
typedef  TYPE_3__* mchunkptr ;
struct TYPE_18__ {scalar_t__ head; } ;
struct TYPE_17__ {struct TYPE_17__* next; int /*<<< orphan*/  base; } ;
struct TYPE_16__ {size_t max_footprint; size_t footprint; size_t topsize; TYPE_3__* top; TYPE_2__ seg; } ;

/* Variables and functions */
 scalar_t__ FENCEPOST_HEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t TOP_FOOT_SIZE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC11(mstate m) {
  FUNC6();
  if (!FUNC1(m)) {
    size_t maxfp = 0;
    size_t fp = 0;
    size_t used = 0;
    FUNC3(m);
    if (FUNC8(m)) {
      msegmentptr s = &m->seg;
      maxfp = m->max_footprint;
      fp = m->footprint;
      used = fp - (m->topsize + TOP_FOOT_SIZE);

      while (s != 0) {
	mchunkptr q = FUNC2(s->base);
	while (FUNC10(s, q) &&
	       q != m->top && q->head != FENCEPOST_HEAD) {
	  if (!FUNC5(q))
	    used -= FUNC4(q);
	  q = FUNC9(q);
	}
	s = s->next;
      }
    }

    FUNC7(stderr, "max system bytes = %10lu\n", (unsigned long)(maxfp));
    FUNC7(stderr, "system bytes     = %10lu\n", (unsigned long)(fp));
    FUNC7(stderr, "in use bytes     = %10lu\n", (unsigned long)(used));

    FUNC0(m);
  }
}