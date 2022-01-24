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
struct event_config {scalar_t__ rejectable; int /*<<< orphan*/  cmdlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3(struct event_config *ev)
{
	int status = 0;

	status = FUNC1(ev->cmdlist);
	if (status && ev->rejectable) {
		FUNC2(LOG_ERR, "canceled");
		FUNC0(NULL);
	}
	return status;
}