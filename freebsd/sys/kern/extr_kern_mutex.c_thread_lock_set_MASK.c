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
struct thread {struct mtx* td_lock; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 

void
FUNC3(struct thread *td, struct mtx *new)
{
	struct mtx *lock;

	FUNC1(new, MA_OWNED);
	FUNC0(td, MA_OWNED);
	lock = td->td_lock;
	td->td_lock = new;
	FUNC2(lock);
}