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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "Usage:\n");
	FUNC1(stderr, "\tgpioctl [-f ctldev] -l [-v]\n");
	FUNC1(stderr, "\tgpioctl [-f ctldev] [-pN] -t pin\n");
	FUNC1(stderr, "\tgpioctl [-f ctldev] [-pN] -c pin flag ...\n");
	FUNC1(stderr, "\tgpioctl [-f ctldev] [-pN] -n pin pin-name\n");
	FUNC1(stderr, "\tgpioctl [-f ctldev] [-pN] pin [0|1]\n");
	FUNC0(1);
}