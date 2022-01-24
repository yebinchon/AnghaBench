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

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, char *buf,
    size_t buflen)
{
	if (FUNC4(child) != dev) {
		return (FUNC0(FUNC4(dev), child,
		    buf, buflen));
	}

	FUNC5(buf, buflen, "vendor=0x%hx device=0x%hx rev=0x%hhx",
	    FUNC3(child), FUNC1(child),
	    FUNC2(child));

	return (0);
}