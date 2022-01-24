#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct camdd_dev_pass {int /*<<< orphan*/ * dev; } ;
struct camdd_dev_file {int fd; struct camdd_dev* tmp_buf; } ;
struct TYPE_2__ {struct camdd_dev_pass pass; struct camdd_dev_file file; } ;
struct camdd_dev {int dev_type; TYPE_1__ dev_spec; } ;

/* Variables and functions */
#define  CAMDD_DEV_FILE 129 
#define  CAMDD_DEV_PASS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct camdd_dev*) ; 

void
FUNC3(struct camdd_dev *dev)
{
	if (dev == NULL)
		return;

	switch (dev->dev_type) {
	case CAMDD_DEV_FILE: {
		struct camdd_dev_file *file_dev = &dev->dev_spec.file;

		if (file_dev->fd != -1)
			FUNC1(file_dev->fd);
		FUNC2(file_dev->tmp_buf);
		break;
	}
	case CAMDD_DEV_PASS: {
		struct camdd_dev_pass *pass_dev = &dev->dev_spec.pass;

		if (pass_dev->dev != NULL)
			FUNC0(pass_dev->dev);
		break;
	}
	default:
		break;
	}

	FUNC2(dev);
}