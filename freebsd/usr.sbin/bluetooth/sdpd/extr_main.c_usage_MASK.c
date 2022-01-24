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
 char* SDPD ; 
 char* SDP_LOCAL_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
"Usage: %s [options]\n" \
"Where options are:\n" \
"	-c	specify control socket name (default %s)\n" \
"	-d	do not detach (run in foreground)\n" \
"	-g grp	specify group\n" \
"	-h	display usage and exit\n" \
"	-u usr	specify user\n",
		SDPD, SDP_LOCAL_PATH);
	FUNC0(255);
}