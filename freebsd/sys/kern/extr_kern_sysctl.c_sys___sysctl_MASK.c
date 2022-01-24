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
struct sysctl_args {int namelen; int /*<<< orphan*/  oldlenp; int /*<<< orphan*/  newlen; int /*<<< orphan*/  new; int /*<<< orphan*/  old; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  j ;

/* Variables and functions */
 int CTL_MAXNAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int**,int) ; 
 int FUNC1 (size_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct sysctl_args *uap)
{
	int error, i, name[CTL_MAXNAME];
	size_t j;

	if (uap->namelen > CTL_MAXNAME || uap->namelen < 2)
		return (EINVAL);

 	error = FUNC0(uap->name, &name, uap->namelen * sizeof(int));
 	if (error)
		return (error);

	error = FUNC2(td, name, uap->namelen,
		uap->old, uap->oldlenp, 0,
		uap->new, uap->newlen, &j, 0);
	if (error && error != ENOMEM)
		return (error);
	if (uap->oldlenp) {
		i = FUNC1(&j, uap->oldlenp, sizeof(j));
		if (i)
			return (i);
	}
	return (error);
}