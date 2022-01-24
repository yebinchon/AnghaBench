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

/* Variables and functions */
 int /*<<< orphan*/  M_EVDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct evdev_dev* FUNC0 (int,int /*<<< orphan*/ ,int) ; 

struct evdev_dev *
FUNC1(void)
{

	return FUNC0(sizeof(struct evdev_dev), M_EVDEV, M_WAITOK | M_ZERO);
}