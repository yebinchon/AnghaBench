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
struct rlimit {int dummy; } ;
struct __getrlimit_args {scalar_t__ which; int /*<<< orphan*/  rlp; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RLIM_NLIMITS ; 
 int FUNC0 (struct rlimit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,scalar_t__,struct rlimit*) ; 

int
FUNC2(struct thread *td, struct __getrlimit_args *uap)
{
	struct rlimit rlim;
	int error;

	if (uap->which >= RLIM_NLIMITS)
		return (EINVAL);
	FUNC1(td, uap->which, &rlim);
	error = FUNC0(&rlim, uap->rlp, sizeof(struct rlimit));
	return (error);
}