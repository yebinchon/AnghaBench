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
struct __sysctlbyname_args {int /*<<< orphan*/ * oldlenp; int /*<<< orphan*/  newlen; int /*<<< orphan*/  new; int /*<<< orphan*/  old; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rv ;

/* Variables and functions */
 int FUNC0 (size_t*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct __sysctlbyname_args *uap)
{
	size_t rv;
	int error;

	error = FUNC1(td, uap->name, uap->namelen, uap->old,
	    uap->oldlenp, uap->new, uap->newlen, &rv, 0, 0);
	if (error != 0)
		return (error);
	if (uap->oldlenp != NULL)
		error = FUNC0(&rv, uap->oldlenp, sizeof(rv));

	return (error);
}