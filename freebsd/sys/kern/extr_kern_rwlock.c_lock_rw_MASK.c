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
struct rwlock {int dummy; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct rwlock*) ; 

void
FUNC2(struct lock_object *lock, uintptr_t how)
{
	struct rwlock *rw;

	rw = (struct rwlock *)lock;
	if (how)
		FUNC0(rw);
	else
		FUNC1(rw);
}