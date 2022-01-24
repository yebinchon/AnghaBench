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
struct kqueue {int /*<<< orphan*/  kq_task; int /*<<< orphan*/  kq_lock; TYPE_1__ kq_sel; int /*<<< orphan*/  kq_head; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kqueue_task ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct kqueue *kq)
{

	FUNC3(&kq->kq_lock, "kqueue", NULL, MTX_DEF | MTX_DUPOK);
	FUNC0(&kq->kq_head);
	FUNC2(&kq->kq_sel.si_note, &kq->kq_lock);
	FUNC1(&kq->kq_task, 0, kqueue_task, kq);
}