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
struct TYPE_2__ {int poll_enabled; int /*<<< orphan*/  output_poll_work; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  output_poll_execute ; 
 int /*<<< orphan*/  taskqueue_thread ; 

void FUNC2(struct drm_device *dev)
{
	FUNC0(taskqueue_thread, &dev->mode_config.output_poll_work,
	    0, output_poll_execute, dev);
	dev->mode_config.poll_enabled = true;

	FUNC1(dev);
}