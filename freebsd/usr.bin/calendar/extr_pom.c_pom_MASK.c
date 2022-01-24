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
 int MAXMOONS ; 
 int /*<<< orphan*/  FUNC0 (int,double,double*,double*) ; 
 int FUNC1 (double) ; 

void
FUNC2(int year, double utcoffset, int *fms, int *nms)
{
	double ffms[MAXMOONS];
	double fnms[MAXMOONS];
	int i, j;

	FUNC0(year, utcoffset, ffms, fnms);

	j = 0;
	for (i = 0; ffms[i] != 0; i++)
		fms[j++] = FUNC1(ffms[i]);
	fms[i] = -1;
	for (i = 0; fnms[i] != 0; i++)
		nms[i] = FUNC1(fnms[i]);
	nms[i] = -1;
}