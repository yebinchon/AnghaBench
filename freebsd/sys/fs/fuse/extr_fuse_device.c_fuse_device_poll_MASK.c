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
struct fuse_data {int /*<<< orphan*/  ms_mtx; int /*<<< orphan*/  ks_rsel; int /*<<< orphan*/  ms_head; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (void**) ; 
 scalar_t__ FUNC2 (struct fuse_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct cdev *dev, int events, struct thread *td)
{
	struct fuse_data *data;
	int error, revents = 0;

	error = FUNC1((void **)&data);
	if (error != 0)
		return (events &
		    (POLLHUP|POLLIN|POLLRDNORM|POLLOUT|POLLWRNORM));

	if (events & (POLLIN | POLLRDNORM)) {
		FUNC3(data->ms_mtx);
		if (FUNC2(data) || FUNC0(&data->ms_head))
			revents |= events & (POLLIN | POLLRDNORM);
		else
			FUNC5(td, &data->ks_rsel);
		FUNC4(data->ms_mtx);
	}
	if (events & (POLLOUT | POLLWRNORM)) {
		revents |= events & (POLLOUT | POLLWRNORM);
	}
	return (revents);
}