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
struct snddev_info {struct cdev* mixer_dev; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct snddev_info* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cdev *
FUNC1(device_t dev)
{
	struct snddev_info *snddev;

	snddev = FUNC0(dev);

	return snddev->mixer_dev;
}