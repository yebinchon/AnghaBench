#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct dev_event_info {struct dev_event_info* dei_data; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  queued; int /*<<< orphan*/  devq; int /*<<< orphan*/  cv; scalar_t__ nonblock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  M_BUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct dev_event_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dev_event_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dei_link ; 
 TYPE_1__ devsoftc ; 
 int /*<<< orphan*/  FUNC4 (struct dev_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dev_event_info*) ; 
 int FUNC8 (struct dev_event_info*,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct dev_event_info *n1;
	int rv;

	FUNC5(&devsoftc.mtx);
	while (FUNC0(&devsoftc.devq)) {
		if (devsoftc.nonblock) {
			FUNC6(&devsoftc.mtx);
			return (EAGAIN);
		}
		rv = FUNC3(&devsoftc.cv, &devsoftc.mtx);
		if (rv) {
			/*
			 * Need to translate ERESTART to EINTR here? -- jake
			 */
			FUNC6(&devsoftc.mtx);
			return (rv);
		}
	}
	n1 = FUNC1(&devsoftc.devq);
	FUNC2(&devsoftc.devq, n1, dei_link);
	devsoftc.queued--;
	FUNC6(&devsoftc.mtx);
	rv = FUNC8(n1->dei_data, FUNC7(n1->dei_data), uio);
	FUNC4(n1->dei_data, M_BUS);
	FUNC4(n1, M_BUS);
	return (rv);
}