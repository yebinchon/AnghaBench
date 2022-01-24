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
struct thread {int dummy; } ;
struct socketpair_args {int /*<<< orphan*/  rsv; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC3(struct thread *td, struct socketpair_args *uap)
{
	int error, sv[2];

	error = FUNC2(td, uap->domain, uap->type,
	    uap->protocol, sv);
	if (error != 0)
		return (error);
	error = FUNC0(sv, uap->rsv, 2 * sizeof(int));
	if (error != 0) {
		(void)FUNC1(td, sv[0]);
		(void)FUNC1(td, sv[1]);
	}
	return (error);
}