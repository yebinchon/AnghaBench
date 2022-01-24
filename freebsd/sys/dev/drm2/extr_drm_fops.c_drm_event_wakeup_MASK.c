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
struct drm_pending_event {struct drm_file* file_priv; } ;
struct drm_file {int /*<<< orphan*/  event_poll; int /*<<< orphan*/  event_space; TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct drm_pending_event *e)
{
	struct drm_file *file_priv;
	struct drm_device *dev;

	file_priv = e->file_priv;
	dev = file_priv->minor->dev;
	FUNC0(&dev->event_lock, MA_OWNED);

	FUNC2(&file_priv->event_space);
	FUNC1(&file_priv->event_poll);
}