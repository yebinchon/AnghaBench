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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(const char *progname)
{
	FUNC0("Usage:\n");
	FUNC0("\t%s: [-i <interface>] <cmd> (<arg>)\n", progname);
	FUNC0("\t%s: [-h]\n", progname);
	FUNC0("\n");
	FUNC0("Valid commands:\n");
	FUNC0("\tget:\t\tGet current spectral parameters\n");
	FUNC0("\tset <param> <value>:\t\tSet spectral parameter\n");
	FUNC0("\tstart: Start spectral scan\n");
	FUNC0("\tstop: Stop spectral scan\n");
	FUNC0("\tenable_at_reset <0|1>: enable reporting upon channel reset\n");
}