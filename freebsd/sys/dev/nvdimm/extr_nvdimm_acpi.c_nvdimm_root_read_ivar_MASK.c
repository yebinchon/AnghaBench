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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int NVDIMM_ROOT_IVAR_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, device_t child, int index,
    uintptr_t *result)
{

	if (index < 0 || index >= NVDIMM_ROOT_IVAR_MAX)
		return (ENOENT);
	*result = ((uintptr_t *)FUNC0(child))[index];
	return (0);
}