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
struct thread {int dummy; } ;
struct drm_file {int /*<<< orphan*/  event_poll; int /*<<< orphan*/  event_list; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  KTR_DRM ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int FUNC3 (void**) ; 
 struct drm_device* FUNC4 (struct cdev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC9(struct cdev *kdev, int events, struct thread *td)
{
	struct drm_file *file_priv;
	struct drm_device *dev;
	int error, revents;

	error = FUNC3((void **)&file_priv);
	if (error != 0) {
		FUNC2("can't find authenticator\n");
		return (EINVAL);
	}

	dev = FUNC4(kdev);

	revents = 0;
	FUNC6(&dev->event_lock);
	if ((events & (POLLIN | POLLRDNORM)) != 0) {
		if (FUNC5(&file_priv->event_list)) {
			FUNC0(KTR_DRM, "drm_poll empty list");
			FUNC8(td, &file_priv->event_poll);
		} else {
			revents |= events & (POLLIN | POLLRDNORM);
			FUNC1(KTR_DRM, "drm_poll revents %x", revents);
		}
	}
	FUNC7(&dev->event_lock);
	return (revents);
}