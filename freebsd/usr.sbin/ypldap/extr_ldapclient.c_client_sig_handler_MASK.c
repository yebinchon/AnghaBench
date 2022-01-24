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

/* Variables and functions */
#define  SIGINT 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(int sig, short event, void *p)
{
	switch (sig) {
	case SIGINT:
	case SIGTERM:
		FUNC0();
		break;
	default:
		FUNC1("unexpected signal");
	}
}