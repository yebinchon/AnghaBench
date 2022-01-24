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
struct thread {int td_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int TDF_BOUND ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct thread *td)
{
	FUNC0(td, MA_OWNED);
	return (td->td_flags & TDF_BOUND);
}