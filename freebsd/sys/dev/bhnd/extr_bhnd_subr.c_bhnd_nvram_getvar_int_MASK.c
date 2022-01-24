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
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_TYPE_INT16 ; 
 int /*<<< orphan*/  BHND_NVRAM_TYPE_INT32 ; 
 int /*<<< orphan*/  BHND_NVRAM_TYPE_INT8 ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC2(device_t dev, const char *name, void *value, int width)
{
	bhnd_nvram_type	type;
	size_t		len;

	switch (width) {
	case 1:
		type = BHND_NVRAM_TYPE_INT8;
		break;
	case 2:
		type = BHND_NVRAM_TYPE_INT16;
		break;
	case 4:
		type = BHND_NVRAM_TYPE_INT32;
		break;
	default:
		FUNC1(dev, "unsupported NVRAM integer width: %d\n",
		    width);
		return (EINVAL);
	}

	len = width;
	return (FUNC0(dev, name, value, &len, type));
}