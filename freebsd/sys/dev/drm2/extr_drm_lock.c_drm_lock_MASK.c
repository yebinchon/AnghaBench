#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* hw_lock; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  user_waiters; int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  lock_time; struct drm_file* file_priv; } ;
struct drm_master {TYPE_3__ lock; } ;
struct drm_lock {scalar_t__ context; int flags; } ;
struct drm_file {int /*<<< orphan*/  is_master; int /*<<< orphan*/  lock_count; struct drm_master* master; } ;
struct TYPE_8__ {scalar_t__ context; TYPE_1__* lock; } ;
struct drm_device {TYPE_2__* driver; int /*<<< orphan*/  sigmask; TYPE_4__ sigdata; int /*<<< orphan*/ * counts; } ;
struct TYPE_6__ {scalar_t__ (* dma_quiescent ) (struct drm_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_KERNEL_CONTEXT ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int _DRM_LOCK_QUIESCENT ; 
 size_t _DRM_STAT_LOCKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  drm_notifier ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct drm_device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC13(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_lock *lock = data;
	struct drm_master *master = file_priv->master;
	int ret = 0;

	++file_priv->lock_count;

	if (lock->context == DRM_KERNEL_CONTEXT) {
		FUNC1("Process %d using kernel context %d\n",
			  DRM_CURRENTPID, lock->context);
		return -EINVAL;
	}

	FUNC0("%d (pid %d) requests lock (0x%08x), flags = 0x%08x\n",
		  lock->context, DRM_CURRENTPID,
		  master->lock.hw_lock->lock, lock->flags);

	FUNC6(&master->lock.spinlock);
	master->lock.user_waiters++;
	FUNC7(&master->lock.spinlock);

	for (;;) {
#if defined(__linux__)
		if (!master->lock.hw_lock) {
			/* Device has been unregistered */
			FUNC8(SIGTERM, current, 0);
			ret = -EINTR;
			break;
		}
#endif
		if (FUNC5(&master->lock, lock->context)) {
			master->lock.file_priv = file_priv;
			master->lock.lock_time = jiffies;
			FUNC3(&dev->counts[_DRM_STAT_LOCKS]);
			break;	/* Got lock */
		}

		/* Contention */
		FUNC2(dev);
		ret = -FUNC12(&master->lock.lock_queue, &drm_global_mutex,
		    PCATCH, "drmlk2", 0);
		if (ret == -ERESTART)
			ret = -ERESTARTSYS;
		if (ret != 0)
			break;
	}
	FUNC6(&master->lock.spinlock);
	master->lock.user_waiters--;
	FUNC7(&master->lock.spinlock);

	FUNC0("%d %s\n", lock->context,
		  ret ? "interrupted" : "has lock");
	if (ret) return ret;

#if defined(__linux__)
	/* don't set the block all signals on the master process for now 
	 * really probably not the correct answer but lets us debug xkb
 	 * xserver for now */
	if (!file_priv->is_master) {
		FUNC10(&dev->sigmask);
		FUNC9(&dev->sigmask, SIGSTOP);
		FUNC9(&dev->sigmask, SIGTSTP);
		FUNC9(&dev->sigmask, SIGTTIN);
		FUNC9(&dev->sigmask, SIGTTOU);
		dev->sigdata.context = lock->context;
		dev->sigdata.lock = master->lock.hw_lock;
		FUNC4(drm_notifier, &dev->sigdata, &dev->sigmask);
	}
#endif

	if (dev->driver->dma_quiescent && (lock->flags & _DRM_LOCK_QUIESCENT))
	{
		if (dev->driver->dma_quiescent(dev)) {
			FUNC0("%d waiting for DMA quiescent\n",
				  lock->context);
			return -EBUSY;
		}
	}

	return 0;
}