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
 int /*<<< orphan*/  EX_USAGE ; 
 char* FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

#define FMT "    %-14s %s\n"
	FUNC1(stderr, "usage: usbdump [options]\n");
	FUNC1(stderr, FMT, "-i <usbusX>", "Listen on USB bus interface");
	FUNC1(stderr, FMT, "-f <unit[.endpoint]>", "Specify a device and endpoint filter");
	FUNC1(stderr, FMT, "-r <file>", "Read the raw packets from file");
	FUNC1(stderr, FMT, "-s <snaplen>", "Snapshot bytes from each packet");
	FUNC1(stderr, FMT, "-v", "Increase the verbose level");
	FUNC1(stderr, FMT, "-b <file>", "Save raw version of all recorded data to file");
	FUNC1(stderr, FMT, "-w <file>", "Write the raw packets to file");
	FUNC1(stderr, FMT, "-h", "Display summary of command line options");
#undef FMT
	FUNC0(EX_USAGE);
}