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
struct bcd_clocktime {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcd_clocktime const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int show_io ; 

void
FUNC3(device_t dev, int rw, const struct bcd_clocktime *bct)
{

	if (show_io & rw) {
		FUNC0(dev, rw);
		FUNC1(bct, 9);
		FUNC2("\n");
	}
}