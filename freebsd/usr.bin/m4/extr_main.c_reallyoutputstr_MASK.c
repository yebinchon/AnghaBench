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
 int /*<<< orphan*/  FUNC1 (char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 size_t ilevel ; 
 TYPE_1__* infile ; 
 scalar_t__ synch_lines ; 

void
FUNC3(const char *s)
{
	if (synch_lines) {
		while (*s) {
			FUNC1(*s, active);
			if (*s++ == '\n') {
				infile[ilevel].synch_lineno++;
				if (infile[ilevel].synch_lineno !=
				    infile[ilevel].lineno)
					FUNC0();
			}
		}
	} else
		FUNC2(s, active);
}