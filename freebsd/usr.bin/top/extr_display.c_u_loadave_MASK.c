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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int lmpid ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int x_lastpid ; 
 int x_loadave ; 
 int x_loadave_nompid ; 
 int /*<<< orphan*/  y_lastpid ; 
 int /*<<< orphan*/  y_loadave ; 

void
FUNC2(int mpid, double *avenrun)
{
    int i;

    if (mpid != -1)
    {
	/* change screen only when value has really changed */
	if (mpid != lmpid)
	{
	    FUNC0(x_lastpid, y_lastpid);
	    FUNC1("%5d", mpid);
	    lmpid = mpid;
	}

	/* i remembers x coordinate to move to */
	i = x_loadave;
    }
    else
    {
	i = x_loadave_nompid;
    }

    /* move into position for load averages */
    FUNC0(i, y_loadave);

    /* display new load averages */
    /* we should optimize this and only display changes */
    for (i = 0; i < 3; i++)
    {
	FUNC1("%s%5.2f",
	    i == 0 ? "" : ", ",
	    avenrun[i]);
    }
}