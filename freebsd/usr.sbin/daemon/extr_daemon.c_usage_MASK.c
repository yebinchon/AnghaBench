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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	(void)FUNC1(stderr,
	    "usage: daemon [-cfrS] [-p child_pidfile] [-P supervisor_pidfile]\n"
	    "              [-u user] [-o output_file] [-t title]\n"
	    "              [-l syslog_facility] [-s syslog_priority]\n"
	    "              [-T syslog_tag] [-m output_mask] [-R restart_delay_secs]\n"
	    "command arguments ...\n");
	FUNC0(1);
}