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
 struct mtx blocked_lock ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 

struct mtx *
FUNC2(struct thread *td)
{
	struct mtx *lock;

	FUNC0(td, MA_OWNED);
	lock = td->td_lock;
	td->td_lock = &blocked_lock;
	FUNC1(lock);

	return (lock);
}