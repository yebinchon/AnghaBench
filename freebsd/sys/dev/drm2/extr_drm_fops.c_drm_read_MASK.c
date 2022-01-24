#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct drm_pending_event {int /*<<< orphan*/  (* destroy ) (struct drm_pending_event*) ;TYPE_1__* event; } ;
struct drm_file {int /*<<< orphan*/  event_space; int /*<<< orphan*/  event_list; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  KTR_DRM ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PCATCH ; 
 TYPE_2__* curproc ; 
 scalar_t__ FUNC2 (void**) ; 
 scalar_t__ FUNC3 (struct drm_file*,struct uio*,struct drm_pending_event**) ; 
 struct drm_device* FUNC4 (struct cdev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_pending_event*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct uio*) ; 

int
FUNC11(struct cdev *kdev, struct uio *uio, int ioflag)
{
	struct drm_file *file_priv;
	struct drm_device *dev;
	struct drm_pending_event *e;
	ssize_t error;

	error = FUNC2((void **)&file_priv);
	if (error != 0) {
		FUNC1("can't find authenticator\n");
		return (EINVAL);
	}

	dev = FUNC4(kdev);
	FUNC7(&dev->event_lock);
	while (FUNC5(&file_priv->event_list)) {
		if ((ioflag & O_NONBLOCK) != 0) {
			error = EAGAIN;
			goto out;
		}
		error = FUNC6(&file_priv->event_space, &dev->event_lock,
	           PCATCH, "drmrea", 0);
	       if (error != 0)
		       goto out;
	}

	while (FUNC3(file_priv, uio, &e)) {
		FUNC8(&dev->event_lock);
		error = FUNC10(e->event, e->event->length, uio);
		FUNC0(KTR_DRM, "drm_event_dequeued %d %d %d", curproc->p_pid,
		    e->event->type, e->event->length);

		e->destroy(e);
		if (error != 0)
			return (error);
		FUNC7(&dev->event_lock);
	}

out:
	FUNC8(&dev->event_lock);
	return (error);
}