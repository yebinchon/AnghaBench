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
 int ENXIO ; 
 int ISP_CORE_VERSION_MAJOR ; 
 int ISP_CORE_VERSION_MINOR ; 
 int ISP_PLATFORM_VERSION_MAJOR ; 
 int ISP_PLATFORM_VERSION_MINOR ; 
 scalar_t__ bootverbose ; 
 scalar_t__ isp_announced ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int found = 0;
	const char *name = FUNC0(dev);
	if (FUNC2(name, "SUNW,isp") == 0 ||
	    FUNC2(name, "QLGC,isp") == 0 ||
	    FUNC2(name, "ptisp") == 0 ||
	    FUNC2(name, "PTI,ptisp") == 0) {
		found++;
	}
	if (!found)
		return (ENXIO);
	
	if (isp_announced == 0 && bootverbose) {
		FUNC1("Qlogic ISP Driver, FreeBSD Version %d.%d, "
		    "Core Version %d.%d\n",
		    ISP_PLATFORM_VERSION_MAJOR, ISP_PLATFORM_VERSION_MINOR,
		    ISP_CORE_VERSION_MAJOR, ISP_CORE_VERSION_MINOR);
		isp_announced++;
	}
	return (0);
}