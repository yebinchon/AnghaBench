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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  sigio; int /*<<< orphan*/  cv; scalar_t__ async; scalar_t__ nonblock; scalar_t__ inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ devsoftc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int fflag, int devtype, struct thread *td)
{

	FUNC2(&devsoftc.mtx);
	devsoftc.inuse = 0;
	devsoftc.nonblock = 0;
	devsoftc.async = 0;
	FUNC0(&devsoftc.cv);
	FUNC1(&devsoftc.sigio);
	FUNC3(&devsoftc.mtx);
	return (0);
}