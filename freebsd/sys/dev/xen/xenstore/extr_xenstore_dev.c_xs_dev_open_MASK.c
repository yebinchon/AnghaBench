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
struct xs_dev_data {int /*<<< orphan*/  watches; int /*<<< orphan*/  transactions; int /*<<< orphan*/  lock; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 int M_ZERO ; 
 int FUNC1 (struct xs_dev_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xs_dev_data*,int /*<<< orphan*/ ) ; 
 struct xs_dev_data* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_dev_dtor ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct xs_dev_data *u;
	int error;

	u = FUNC3(sizeof(*u), M_XENSTORE, M_WAITOK|M_ZERO);
	FUNC4(&u->lock, "xsdev_lock", NULL, MTX_DEF);
	FUNC0(&u->transactions);
	FUNC0(&u->watches);
	error = FUNC1(u, xs_dev_dtor);
	if (error != 0)
		FUNC2(u, M_XENSTORE);

	return (error);
}