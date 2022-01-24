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
 int BIGGEST ; 
 int CREATOR ; 
 int OUTSTANDING ; 
 int PID ; 
 int TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(int option)
{

	FUNC0("Shared Memory:\n");
	FUNC0("T %12s %12s %-11s %-8s %-8s",
	    "ID", "KEY", "MODE", "OWNER", "GROUP");
	if (option & CREATOR)
		FUNC0(" %-8s %-8s", "CREATOR", "CGROUP");
	if (option & OUTSTANDING)
		FUNC0(" %12s", "NATTCH");
	if (option & BIGGEST)
		FUNC0(" %12s", "SEGSZ");
	if (option & PID)
		FUNC0(" %12s %12s", "CPID", "LPID");
	if (option & TIME)
		FUNC0(" %-8s %-8s %-8s", "ATIME", "DTIME", "CTIME");
	FUNC0("\n");
}