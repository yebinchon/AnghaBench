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
 int GV_PLEX_CONCAT ; 
 int GV_PLEX_DISORG ; 
 int GV_PLEX_RAID5 ; 
 int GV_PLEX_STRIPED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

int
FUNC1(char *buf)
{
	if (!FUNC0(buf, "concat"))
		return (GV_PLEX_CONCAT);
	else if (!FUNC0(buf, "striped"))
		return (GV_PLEX_STRIPED);
	else if (!FUNC0(buf, "raid5"))
		return (GV_PLEX_RAID5);
	else
		return (GV_PLEX_DISORG);
}