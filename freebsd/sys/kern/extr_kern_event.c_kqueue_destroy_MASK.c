#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct kqueue {int /*<<< orphan*/  kq_sigio; int /*<<< orphan*/ * kq_knlist; int /*<<< orphan*/ * kq_knhash; int /*<<< orphan*/  kq_lock; TYPE_1__ kq_sel; int /*<<< orphan*/ * kq_fdp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct kqueue *kq)
{

	FUNC0(kq->kq_fdp == NULL,
	    ("kqueue still attached to a file descriptor"));
	FUNC5(&kq->kq_sel);
	FUNC3(&kq->kq_sel.si_note);
	FUNC4(&kq->kq_lock);

	if (kq->kq_knhash != NULL)
		FUNC1(kq->kq_knhash, M_KQUEUE);
	if (kq->kq_knlist != NULL)
		FUNC1(kq->kq_knlist, M_KQUEUE);

	FUNC2(&kq->kq_sigio);
}