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
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ alarmed ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ verbose ; 

int
FUNC3(int c)
{
    if (alarmed || FUNC2(c) < 0) {
	FUNC0(0);
	alarmed = 0;

	if (verbose) {
	    if (errno == EINTR || errno == EWOULDBLOCK)
		FUNC1(" -- write timed out");
	    else
		FUNC1(" -- write failed: %m");
	}
	return (0);
    }
    return (1);
}