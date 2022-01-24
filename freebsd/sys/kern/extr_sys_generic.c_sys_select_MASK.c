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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct select_args {int /*<<< orphan*/  ex; int /*<<< orphan*/  ou; int /*<<< orphan*/  in; int /*<<< orphan*/  nd; int /*<<< orphan*/ * tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFDBITS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct timeval*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct select_args *uap)
{
	struct timeval tv, *tvp;
	int error;

	if (uap->tv != NULL) {
		error = FUNC0(uap->tv, &tv, sizeof(tv));
		if (error)
			return (error);
		tvp = &tv;
	} else
		tvp = NULL;

	return (FUNC1(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
	    NFDBITS));
}