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
 unsigned char FUNC0 (char const**) ; 

const char *FUNC1(unsigned char link_down_rc)
{
	static const char *reason[] = {
		"Link Down",
		"Remote Fault",
		"Auto-negotiation Failure",
		"Reserved3",
		"Insufficient Airflow",
		"Unable To Determine Reason",
		"No RX Signal Detected",
		"Reserved7",
	};

	if (link_down_rc >= FUNC0(reason))
		return "Bad Reason Code";

	return reason[link_down_rc];
}