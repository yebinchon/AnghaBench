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
typedef  int /*<<< orphan*/  u_char ;
struct thread {int /*<<< orphan*/  td_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_BORROWING ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct thread *td, u_char prio)
{

	td->td_flags |= TDF_BORROWING;
	FUNC0(td, prio);
}