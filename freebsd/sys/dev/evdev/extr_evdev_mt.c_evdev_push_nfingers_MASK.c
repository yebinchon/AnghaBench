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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev_dev*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct evdev_dev *evdev, int32_t nfingers)
{

	FUNC0(evdev);
	FUNC2(evdev, nfingers);
	FUNC1(evdev);
}