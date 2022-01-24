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
typedef  scalar_t__ uint16_t ;
struct evdev_dev {int /*<<< orphan*/  ev_msc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MSC_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

inline void
FUNC2(struct evdev_dev *evdev, uint16_t code)
{

	FUNC0(code < MSC_CNT, ("invalid evdev msc property"));
	FUNC1(evdev->ev_msc_flags, code);
}