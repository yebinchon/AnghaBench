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
 int lmpid ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(int mpid, double avenrun[])
{
    int i;

    /* i_loadave also clears the screen, since it is first */
    FUNC1();

    /* mpid == -1 implies this system doesn't have an _mpid */
    if (mpid != -1)
    {
	FUNC0("last pid: %5d;  ", mpid);
    }

    FUNC0("load averages");

    for (i = 0; i < 3; i++)
    {
	FUNC0("%c %5.2f",
	    i == 0 ? ':' : ',',
	    avenrun[i]);
    }
    lmpid = mpid;
}