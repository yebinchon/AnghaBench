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
struct evdev_dev {int dummy; } ;
typedef  size_t int32_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * evdev_fngmap ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct evdev_dev *evdev, int32_t nfingers)
{
	int32_t i;

	for (i = 0; i < FUNC0(FUNC2(evdev_fngmap), nfingers); i++)
		FUNC1(evdev, evdev_fngmap[i]);
}