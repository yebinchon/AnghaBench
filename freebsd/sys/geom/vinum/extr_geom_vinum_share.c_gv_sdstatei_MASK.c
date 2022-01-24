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
 int GV_SD_DOWN ; 
 int GV_SD_INITIALIZING ; 
 int GV_SD_REVIVING ; 
 int GV_SD_STALE ; 
 int GV_SD_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

int
FUNC1(char *buf)
{
	if (!FUNC0(buf, "up"))
		return (GV_SD_UP);
	else if (!FUNC0(buf, "reviving"))
		return (GV_SD_REVIVING);
	else if (!FUNC0(buf, "initializing"))
		return (GV_SD_INITIALIZING);
	else if (!FUNC0(buf, "stale"))
		return (GV_SD_STALE);
	else
		return (GV_SD_DOWN);
}