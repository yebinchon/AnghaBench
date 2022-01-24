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
struct thread {int /*<<< orphan*/ * td_lock; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void volatile*,uintptr_t) ; 
 int /*<<< orphan*/  blocked_lock ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct thread *td, struct mtx *new)
{
	FUNC2(new, MA_OWNED);
	FUNC0(td->td_lock == &blocked_lock);
	FUNC1((volatile void *)&td->td_lock, (uintptr_t)new);
}