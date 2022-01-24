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
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC1(device_t dev, const char *name, void *buf, size_t size,
    bhnd_nvram_type type)
{
	size_t	nbytes;
	int	error;

	/* Attempt read */
	nbytes = size;
	if ((error = FUNC0(dev, name, buf, &nbytes, type)))
		return (error);

	/* Verify that the expected number of bytes were fetched */
	if (nbytes < size)
		return (ENXIO);

	return (0);
}