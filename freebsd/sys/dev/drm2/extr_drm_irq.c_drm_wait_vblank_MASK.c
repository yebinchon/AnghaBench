#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; unsigned int sequence; } ;
struct TYPE_4__ {long sequence; int /*<<< orphan*/  tval_usec; int /*<<< orphan*/  tval_sec; } ;
union drm_wait_vblank {TYPE_2__ request; TYPE_1__ reply; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct drm_file {int dummy; } ;
struct drm_device {unsigned int num_crtcs; unsigned int* last_vblank_wait; int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/ * _vblank_count; scalar_t__ irq_enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int const,int,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  KTR_DRM ; 
 int /*<<< orphan*/  PCATCH ; 
#define  _DRM_VBLANK_ABSOLUTE 129 
 unsigned int _DRM_VBLANK_EVENT ; 
 int _DRM_VBLANK_FLAGS_MASK ; 
 int _DRM_VBLANK_HIGH_CRTC_MASK ; 
 unsigned int _DRM_VBLANK_HIGH_CRTC_SHIFT ; 
 unsigned int _DRM_VBLANK_NEXTONMISS ; 
#define  _DRM_VBLANK_RELATIVE 128 
 unsigned int _DRM_VBLANK_SECONDARY ; 
 int _DRM_VBLANK_SIGNAL ; 
 int _DRM_VBLANK_TYPES_MASK ; 
 TYPE_3__* curproc ; 
 int FUNC3 (struct drm_device*,unsigned int,union drm_wait_vblank*,struct drm_file*) ; 
 int FUNC4 (struct drm_device*,unsigned int) ; 
 long FUNC5 (struct drm_device*,unsigned int,struct timeval*) ; 
 int FUNC6 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,unsigned int) ; 
 int hz ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	union drm_wait_vblank *vblwait = data;
	int ret;
	unsigned int flags, seq, crtc, high_crtc;

	if (/*(!drm_dev_to_irq(dev)) || */(!dev->irq_enabled))
		return -EINVAL;

	if (vblwait->request.type & _DRM_VBLANK_SIGNAL)
		return -EINVAL;

	if (vblwait->request.type &
	    ~(_DRM_VBLANK_TYPES_MASK | _DRM_VBLANK_FLAGS_MASK |
	      _DRM_VBLANK_HIGH_CRTC_MASK)) {
		FUNC2("Unsupported type value 0x%x, supported mask 0x%x\n",
			  vblwait->request.type,
			  (_DRM_VBLANK_TYPES_MASK | _DRM_VBLANK_FLAGS_MASK |
			   _DRM_VBLANK_HIGH_CRTC_MASK));
		return -EINVAL;
	}

	flags = vblwait->request.type & _DRM_VBLANK_FLAGS_MASK;
	high_crtc = (vblwait->request.type & _DRM_VBLANK_HIGH_CRTC_MASK);
	if (high_crtc)
		crtc = high_crtc >> _DRM_VBLANK_HIGH_CRTC_SHIFT;
	else
		crtc = flags & _DRM_VBLANK_SECONDARY ? 1 : 0;
	if (crtc >= dev->num_crtcs)
		return -EINVAL;

	ret = FUNC6(dev, crtc);
	if (ret) {
		FUNC1("failed to acquire vblank counter, %d\n", ret);
		return ret;
	}
	seq = FUNC4(dev, crtc);

	switch (vblwait->request.type & _DRM_VBLANK_TYPES_MASK) {
	case _DRM_VBLANK_RELATIVE:
		vblwait->request.sequence += seq;
		vblwait->request.type &= ~_DRM_VBLANK_RELATIVE;
	case _DRM_VBLANK_ABSOLUTE:
		break;
	default:
		ret = -EINVAL;
		goto done;
	}

	if (flags & _DRM_VBLANK_EVENT) {
		/* must hold on to the vblank ref until the event fires
		 * drm_vblank_put will be called asynchronously
		 */
		return FUNC3(dev, crtc, vblwait, file_priv);
	}

	if ((flags & _DRM_VBLANK_NEXTONMISS) &&
	    (seq - vblwait->request.sequence) <= (1<<23)) {
		vblwait->request.sequence = seq + 1;
	}

	FUNC1("waiting on vblank count %d, crtc %d\n",
		  vblwait->request.sequence, crtc);
	dev->last_vblank_wait[crtc] = vblwait->request.sequence;
	FUNC9(&dev->vblank_time_lock);
	while (((FUNC4(dev, crtc) - vblwait->request.sequence) >
	    (1 << 23)) && dev->irq_enabled) {
		/*
		 * The wakeups from the drm_irq_uninstall() and
		 * drm_vblank_off() may be lost there since vbl_lock
		 * is not held.  Then, the timeout will wake us; the 3
		 * seconds delay should not be a problem for
		 * application when crtc is disabled or irq
		 * uninstalled anyway.
		 */
		ret = -FUNC8(&dev->_vblank_count[crtc], &dev->vblank_time_lock,
		    PCATCH, "drmvbl", 3 * hz);
		if (ret == -ERESTART)
			ret = -ERESTARTSYS;
		if (ret != 0)
			break;
	}
	FUNC10(&dev->vblank_time_lock);
	if (ret != -EINTR) {
		struct timeval now;
		long reply_seq;

		reply_seq = FUNC5(dev, crtc, &now);
		FUNC0(KTR_DRM, "wait_vblank %d %d rt %x success %d %d",
		    curproc->p_pid, crtc, vblwait->request.type,
		    vblwait->request.sequence, reply_seq);

		vblwait->reply.sequence = reply_seq;
		vblwait->reply.tval_sec = now.tv_sec;
		vblwait->reply.tval_usec = now.tv_usec;

		FUNC1("returning %d to client\n",
			  vblwait->reply.sequence);
	} else {
		FUNC0(KTR_DRM, "wait_vblank %d %d rt %x error %d %d",
		    curproc->p_pid, crtc, vblwait->request.type, ret,
		    vblwait->request.sequence);

		FUNC1("vblank wait interrupted by signal\n");
	}

done:
	FUNC7(dev, crtc);
	return ret;
}