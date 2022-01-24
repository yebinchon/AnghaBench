#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ synch_lineno; scalar_t__ lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  active ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t ilevel ; 
 TYPE_1__* infile ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ synch_lines ; 

void
FUNC2(int c)
{
	FUNC1(c, active);
	if (synch_lines && c == '\n') {
		infile[ilevel].synch_lineno++;
		if (infile[ilevel].synch_lineno != infile[ilevel].lineno)
			FUNC0();
	}
}