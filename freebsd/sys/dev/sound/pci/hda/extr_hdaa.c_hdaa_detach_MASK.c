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
struct hdaa_devinfo {int /*<<< orphan*/  widget; int /*<<< orphan*/  poll_jack; scalar_t__ poll_ival; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_HDAA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct hdaa_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hdaa_devinfo*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct hdaa_devinfo *devinfo = FUNC3(dev);
	int error;

	if ((error = FUNC2(dev)) != 0)
		return (error);

	FUNC5(devinfo);
	FUNC6(dev);
	devinfo->poll_ival = 0;
	FUNC1(&devinfo->poll_jack);
	FUNC7(devinfo);
	FUNC0(&devinfo->poll_jack);

	FUNC4(devinfo->widget, M_HDAA);
	return (0);
}