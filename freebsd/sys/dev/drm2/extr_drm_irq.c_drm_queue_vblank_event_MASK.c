#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int type; unsigned int sequence; int /*<<< orphan*/  signal; } ;
struct TYPE_10__ {unsigned int sequence; } ;
union drm_wait_vblank {TYPE_5__ request; TYPE_4__ reply; } ;
struct timeval {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  link; int /*<<< orphan*/  destroy; struct drm_file* file_priv; TYPE_1__* event; int /*<<< orphan*/  pid; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {unsigned int sequence; TYPE_1__ base; int /*<<< orphan*/  user_data; } ;
struct drm_pending_vblank_event {int pipe; TYPE_3__ base; TYPE_2__ event; } ;
struct drm_file {int event_space; } ;
struct drm_device {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  vblank_event_list; } ;
struct TYPE_12__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  DRM_EVENT_VBLANK ; 
 int /*<<< orphan*/  DRM_MEM_VBLANK ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KTR_DRM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int _DRM_VBLANK_NEXTONMISS ; 
 TYPE_6__* curproc ; 
 unsigned int FUNC2 (struct drm_device*,int,struct timeval*) ; 
 int /*<<< orphan*/  drm_vblank_event_destroy ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_pending_vblank_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_pending_vblank_event* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_pending_vblank_event*,unsigned int,struct timeval*) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev, int pipe,
				  union drm_wait_vblank *vblwait,
				  struct drm_file *file_priv)
{
	struct drm_pending_vblank_event *e;
	struct timeval now;
	unsigned int seq;
	int ret;

	e = FUNC6(sizeof *e, DRM_MEM_VBLANK, M_NOWAIT | M_ZERO);
	if (e == NULL) {
		ret = -ENOMEM;
		goto err_put;
	}

	e->pipe = pipe;
	e->base.pid = curproc->p_pid;
	e->event.base.type = DRM_EVENT_VBLANK;
	e->event.base.length = sizeof e->event;
	e->event.user_data = vblwait->request.signal;
	e->base.event = &e->event.base;
	e->base.file_priv = file_priv;
	e->base.destroy = drm_vblank_event_destroy;

	FUNC7(&dev->event_lock);

	if (file_priv->event_space < sizeof e->event) {
		ret = -EBUSY;
		goto err_unlock;
	}

	file_priv->event_space -= sizeof e->event;
	seq = FUNC2(dev, pipe, &now);

	if ((vblwait->request.type & _DRM_VBLANK_NEXTONMISS) &&
	    (seq - vblwait->request.sequence) <= (1 << 23)) {
		vblwait->request.sequence = seq + 1;
		vblwait->reply.sequence = vblwait->request.sequence;
	}

	FUNC1("event on vblank count %d, current %d, crtc %d\n",
		  vblwait->request.sequence, seq, pipe);

	FUNC0(KTR_DRM, "vblank_event_queued %d %d rt %x %d", curproc->p_pid, pipe,
	    vblwait->request.type, vblwait->request.sequence);

	e->event.sequence = vblwait->request.sequence;
	if ((seq - vblwait->request.sequence) <= (1 << 23)) {
		FUNC3(dev, pipe);
		FUNC9(dev, e, seq, &now);
		vblwait->reply.sequence = seq;
	} else {
		/* drm_handle_vblank_events will call drm_vblank_put */
		FUNC5(&e->base.link, &dev->vblank_event_list);
		vblwait->reply.sequence = vblwait->request.sequence;
	}

	FUNC8(&dev->event_lock);

	return 0;

err_unlock:
	FUNC8(&dev->event_lock);
	FUNC4(e, DRM_MEM_VBLANK);
err_put:
	FUNC3(dev, pipe);
	return ret;
}