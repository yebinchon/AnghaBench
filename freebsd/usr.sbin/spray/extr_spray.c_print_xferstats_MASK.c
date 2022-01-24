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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(u_int packets, int packetlen, double xfertime)
{
	int datalen;
	double pps;		/* packets per second */
	double bps;		/* bytes per second */

	datalen = packets * packetlen;
	pps = packets / xfertime;
	bps = datalen / xfertime;

	FUNC0("\t%.0f packets/sec, ", pps);

	if (bps >= 1024) 
		FUNC0 ("%.1fK ", bps / 1024);
	else
		FUNC0 ("%.0f ", bps);
	
	FUNC0("bytes/sec\n");
}