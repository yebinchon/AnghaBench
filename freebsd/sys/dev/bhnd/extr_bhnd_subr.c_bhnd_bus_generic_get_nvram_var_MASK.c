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
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(device_t dev, device_t child, const char *name,
    void *buf, size_t *size, bhnd_nvram_type type)
{
	device_t	nvram;
	device_t	parent;

        /* Make sure we're holding Giant for newbus */
	GIANT_REQUIRED;

	/* Look for a directly-attached NVRAM child */
	if ((nvram = FUNC2(dev, "bhnd_nvram", -1)) != NULL)
		return FUNC1(nvram, name, buf, size, type);

	/* Try to delegate to parent */
	if ((parent = FUNC3(dev)) == NULL)
		return (ENODEV);

	return (FUNC0(FUNC3(dev), child,
	    name, buf, size, type));
}