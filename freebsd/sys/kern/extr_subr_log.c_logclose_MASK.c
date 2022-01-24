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
struct TYPE_2__ {scalar_t__ sc_state; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_sigio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ log_open ; 
 TYPE_1__ logsoftc ; 
 int /*<<< orphan*/  msgbuf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC4(struct cdev *dev, int flag, int mode, struct thread *td)
{

	FUNC1(&logsoftc.sc_sigio);

	FUNC2(&msgbuf_lock);
	FUNC0(&logsoftc.sc_callout);
	logsoftc.sc_state = 0;
	log_open = 0;
	FUNC3(&msgbuf_lock);

	return (0);
}