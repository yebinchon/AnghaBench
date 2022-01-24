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
typedef  int /*<<< orphan*/  tunable ;
typedef  int /*<<< orphan*/  rgb ;
struct TYPE_2__ {unsigned char r; unsigned char g; unsigned char b; } ;

/* Variables and functions */
 int NCOLORS ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 TYPE_1__* color_def ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (char*,unsigned char*,unsigned char*,unsigned char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int i;
	char rgb[32];
	char tunable[32];
	unsigned char r, g, b;

	for (i = 0; i < NCOLORS; i++) {
		FUNC1(tunable, sizeof(tunable),
		    "kern.vt.color.%d.rgb", i);
		if (FUNC0(tunable, rgb, sizeof(rgb))) {
			if (FUNC2(rgb, &r, &g, &b) == 0) {
				/* convert to percentages */
				color_def[i].r = r*100/255;
				color_def[i].g = g*100/255;
				color_def[i].b = b*100/255;
			}
		}
	}
}