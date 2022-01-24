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
struct chipc_caps {int /*<<< orphan*/  nvram_src; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (int /*<<< orphan*/ ) ; 
 int BUS_PROBE_NOWILDCARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct chipc_caps	*caps;
	device_t		 chipc;
	int			 error;

	chipc = FUNC3(dev);
	caps = FUNC0(chipc);

	/* Only match on SPROM/OTP devices */
	if (!FUNC1(caps->nvram_src))
		return (ENXIO);

	/* Defer to default driver implementation */
	if ((error = FUNC2(dev)) > 0)
		return (error);

	return (BUS_PROBE_NOWILDCARD);
}