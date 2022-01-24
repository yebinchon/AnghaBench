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
typedef  int /*<<< orphan*/  port_t ;

/* Variables and functions */
 int BSR_VAR_MASK ; 
 int CRONYX_400 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (port_t port, int rev)
{
	int count;

	/* Model 400 has no first chip. */
	port = ((rev & BSR_VAR_MASK) != CRONYX_400) ? FUNC0(port) : FUNC1(port);

	/* Wait up to 10 msec for revision code to appear after reset. */
	for (count=0; FUNC3(FUNC2(port))==0; ++count)
		if (count >= 20000)
			return (0); /* reset failed */

	return FUNC3 (FUNC2 (port));
}