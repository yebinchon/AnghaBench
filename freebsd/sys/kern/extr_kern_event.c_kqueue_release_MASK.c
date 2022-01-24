#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kqueue {int kq_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void
FUNC4(struct kqueue *kq, int locked)
{
	if (locked)
		FUNC1(kq);
	else
		FUNC0(kq);
	kq->kq_refcnt--;
	if (kq->kq_refcnt == 1)
		FUNC3(&kq->kq_refcnt);
	if (!locked)
		FUNC2(kq);
}