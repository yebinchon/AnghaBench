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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __FreeBSD_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char const*) ; 

void
FUNC3(device_t dev, int major, const char *msg)
{

	FUNC2(major, FUNC0(__FreeBSD_version), msg);
	if (FUNC0(__FreeBSD_version) >= major)
		FUNC1(dev,
		    "Obsolete code will removed soon: %s\n", msg);
	else
		FUNC1(dev,
		    "Deprecated code (to be removed in FreeBSD %d): %s\n",
		    major, msg);
}