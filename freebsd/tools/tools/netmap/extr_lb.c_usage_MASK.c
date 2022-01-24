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
 int DEF_BATCH ; 
 int DEF_EXTRA_BUFS ; 
 int DEF_WAIT_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2()
{
	FUNC1("usage: lb [options]\n");
	FUNC1("where options are:\n");
	FUNC1("  -h              	view help text\n");
	FUNC1("  -i iface        	interface name (required)\n");
	FUNC1("  -p [prefix:]npipes	add a new group of output pipes\n");
	FUNC1("  -B nbufs        	number of extra buffers (default: %d)\n", DEF_EXTRA_BUFS);
	FUNC1("  -b batch        	batch size (default: %d)\n", DEF_BATCH);
	FUNC1("  -w seconds        	wait for link up (default: %d)\n", DEF_WAIT_LINK);
	FUNC1("  -W                    enable busy waiting. this will run your CPU at 100%%\n");
	FUNC1("  -s seconds      	seconds between syslog stats messages (default: 0)\n");
	FUNC1("  -o seconds      	seconds between stdout stats messages (default: 0)\n");
	FUNC0(0);
}