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
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  bhnd_size_t ;
typedef  scalar_t__ bhnd_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_PORT_DEVICE ; 
 int FUNC0 (scalar_t__,scalar_t__,char*,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,unsigned long long) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, char *buf,
    size_t buflen)
{
	bhnd_addr_t	addr;
	bhnd_size_t	size;
	
	if (FUNC2(child) != dev) {
		return (FUNC0(FUNC2(dev), child,
		    buf, buflen));
	}


	if (FUNC1(child, BHND_PORT_DEVICE, 0, 0, &addr, &size)) {
		/* No device default port/region */
		if (buflen > 0)
			*buf = '\0';
		return (0);
	}

	FUNC3(buf, buflen, "port0.0=0x%llx", (unsigned long long) addr);
	return (0);
}