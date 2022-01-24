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
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct ntptimeval {int /*<<< orphan*/  time_state; } ;
struct ntp_gettime_args {int /*<<< orphan*/  ntvp; } ;
typedef  int /*<<< orphan*/  ntv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ntptimeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ntptimeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ntptimeval*) ; 

int
FUNC5(struct thread *td, struct ntp_gettime_args *uap)
{	
	struct ntptimeval ntv;

	FUNC3(&ntv, 0, sizeof(ntv));

	FUNC0();
	FUNC4(&ntv);
	FUNC1();

	td->td_retval[0] = ntv.time_state;
	return (FUNC2(&ntv, uap->ntvp, sizeof(ntv)));
}