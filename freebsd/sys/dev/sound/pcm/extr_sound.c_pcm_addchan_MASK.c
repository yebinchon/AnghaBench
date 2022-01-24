#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snddev_info {int /*<<< orphan*/  dev; } ;
struct pcm_channel {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 struct snddev_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC5 (struct snddev_info*,struct pcm_channel*) ; 
 struct pcm_channel* FUNC6 (struct snddev_info*,int /*<<< orphan*/ *,TYPE_1__*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcm_channel*) ; 

int
FUNC8(device_t dev, int dir, kobj_class_t cls, void *devinfo)
{
	struct snddev_info *d = FUNC3(dev);
	struct pcm_channel *ch;
	int err;

	FUNC0(d);

	FUNC1(d);
	ch = FUNC6(d, NULL, cls, dir, -1, devinfo);
	if (!ch) {
		FUNC4(d->dev, "pcm_chn_create(%s, %d, %p) failed\n",
		    cls->name, dir, devinfo);
		FUNC2(d);
		return (ENODEV);
	}

	err = FUNC5(d, ch);
	FUNC2(d);
	if (err) {
		FUNC4(d->dev, "pcm_chn_add(%s) failed, err=%d\n",
		    ch->name, err);
		FUNC7(ch);
	}

	return (err);
}