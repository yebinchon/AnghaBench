#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct kqueue {int kq_state; int /*<<< orphan*/  kq_sigio; TYPE_1__ kq_sel; } ;

/* Variables and functions */
 int KQ_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct kqueue*) ; 
 int KQ_SEL ; 
 int KQ_SLEEP ; 
 int /*<<< orphan*/  PSOCK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 

__attribute__((used)) static void
FUNC7(struct kqueue *kq)
{
	FUNC0(kq);

	if ((kq->kq_state & KQ_SLEEP) == KQ_SLEEP) {
		kq->kq_state &= ~KQ_SLEEP;
		FUNC6(kq);
	}
	if ((kq->kq_state & KQ_SEL) == KQ_SEL) {
		FUNC5(&kq->kq_sel, PSOCK);
		if (!FUNC1(&kq->kq_sel))
			kq->kq_state &= ~KQ_SEL;
	}
	if (!FUNC2(&kq->kq_sel.si_note))
		FUNC3(kq);
	if ((kq->kq_state & KQ_ASYNC) == KQ_ASYNC) {
		FUNC4(&kq->kq_sigio, SIGIO, 0);
	}
}