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
struct uuidgen_args {int count; int /*<<< orphan*/  store; } ;
struct uuid {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (struct uuid*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct uuid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uuid*,size_t) ; 
 struct uuid* FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct uuidgen_args *uap)
{
	struct uuid *store;
	size_t count;
	int error;

	/*
	 * Limit the number of UUIDs that can be created at the same time
	 * to some arbitrary number. This isn't really necessary, but I
	 * like to have some sort of upper-bound that's less than 2G :-)
	 * XXX probably needs to be tunable.
	 */
	if (uap->count < 1 || uap->count > 2048)
		return (EINVAL);

	count = uap->count;
	store = FUNC3(count * sizeof(struct uuid), M_TEMP, M_WAITOK);
	FUNC2(store, count);
	error = FUNC0(store, uap->store, count * sizeof(struct uuid));
	FUNC1(store, M_TEMP);
	return (error);
}