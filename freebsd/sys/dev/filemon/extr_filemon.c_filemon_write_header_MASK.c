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
typedef  int /*<<< orphan*/  uintmax_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct filemon {int /*<<< orphan*/  msgbufr; } ;
struct TYPE_2__ {int p_pid; } ;

/* Variables and functions */
 int FILEMON_VERSION ; 
 TYPE_1__* curproc ; 
 int /*<<< orphan*/  FUNC0 (struct filemon*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct filemon *filemon)
{
	int len;
	struct timeval now;

	FUNC1(&now);

	len = FUNC2(filemon->msgbufr, sizeof(filemon->msgbufr),
	    "# filemon version %d\n# Target pid %d\n# Start %ju.%06ju\nV %d\n",
	    FILEMON_VERSION, curproc->p_pid, (uintmax_t)now.tv_sec,
	    (uintmax_t)now.tv_usec, FILEMON_VERSION);
	if (len < sizeof(filemon->msgbufr))
		FUNC0(filemon, filemon->msgbufr, len);
}