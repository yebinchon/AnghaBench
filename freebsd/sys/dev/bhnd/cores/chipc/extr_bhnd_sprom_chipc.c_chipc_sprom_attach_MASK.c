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
struct chipc_caps {int /*<<< orphan*/  sprom_offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct chipc_caps* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct chipc_caps	*caps;
	device_t		 chipc;
	int			 error;

	chipc = FUNC4(dev);
	caps = FUNC2(chipc);

	/* Request that ChipCommon enable access to SPROM hardware before
	 * delegating attachment (and SPROM parsing) to the common driver */
	if ((error = FUNC1(chipc)))
		return (error);

	error = FUNC3(dev, caps->sprom_offset);
	FUNC0(chipc);
	return (error);
}