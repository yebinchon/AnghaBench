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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct cuse_server {int refs; TYPE_1__ selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC2 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct cuse_server *pcs)
{
	int retval;

	FUNC0();
	FUNC1(pcs);
	/* final client wakeup, if any */
	FUNC2(pcs);

	FUNC4(&pcs->selinfo.si_note, 1);

	retval = pcs->refs;
	FUNC3();

	return (retval);
}