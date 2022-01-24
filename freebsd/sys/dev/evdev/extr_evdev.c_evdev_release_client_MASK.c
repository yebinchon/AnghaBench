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
struct evdev_dev {struct evdev_client* ev_grabber; } ;
struct evdev_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 

int
FUNC1(struct evdev_dev *evdev, struct evdev_client *client)
{

	FUNC0(evdev);

	if (evdev->ev_grabber != client)
		return (EINVAL);

	evdev->ev_grabber = NULL;

	return (0);
}