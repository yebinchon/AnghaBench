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
struct mq_attr {int /*<<< orphan*/  __reserved; } ;
struct kmq_setattr_args {int /*<<< orphan*/ * oattr; int /*<<< orphan*/ * attr; int /*<<< orphan*/  mqd; } ;
typedef  int /*<<< orphan*/  oattr ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mq_attr*,int) ; 
 int FUNC2 (struct mq_attr*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct mq_attr*,struct mq_attr*) ; 

int
FUNC4(struct thread *td, struct kmq_setattr_args *uap)
{
	struct mq_attr attr, oattr;
	int error;

	if (uap->attr != NULL) {
		error = FUNC1(uap->attr, &attr, sizeof(attr));
		if (error != 0)
			return (error);
	}
	error = FUNC3(td, uap->mqd, uap->attr != NULL ? &attr : NULL,
	    &oattr);
	if (error == 0 && uap->oattr != NULL) {
		FUNC0(oattr.__reserved, sizeof(oattr.__reserved));
		error = FUNC2(&oattr, uap->oattr, sizeof(oattr));
	}
	return (error);
}