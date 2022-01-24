#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int min_per; int max_per; int visited; } ;

/* Variables and functions */
 int dumpsize ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int progress ; 
 TYPE_1__* progress_track ; 

__attribute__((used)) static void
FUNC2(void)
{
	int sofar, i;

	sofar = 100 - ((progress * 100) / dumpsize);
	for (i = 0; i < FUNC0(progress_track); i++) {
		if (sofar < progress_track[i].min_per ||
		    sofar > progress_track[i].max_per)
			continue;
		if (progress_track[i].visited)
			return;
		progress_track[i].visited = 1;
		FUNC1("..%d%%", sofar);
		return;
	}
}