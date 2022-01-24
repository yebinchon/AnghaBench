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
typedef  int /*<<< orphan*/  uintmax_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct drm_display_mode {int crtc_vtotal; int crtc_vdisplay; } ;
struct drm_device {int num_crtcs; TYPE_1__* driver; } ;
struct drm_crtc {scalar_t__ framedur_ns; scalar_t__ linedur_ns; scalar_t__ pixeldur_ns; struct drm_display_mode hwmode; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {int (* get_scanout_position ) (struct drm_device*,int,int*,int*) ;} ;

/* Variables and functions */
 unsigned int DRM_CALLED_FROM_VBLIRQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int DRM_SCANOUTPOS_INVBL ; 
 int DRM_SCANOUTPOS_VALID ; 
 int DRM_TIMESTAMP_MAXRETRIES ; 
 int DRM_VBLANKTIME_INVBL ; 
 int DRM_VBLANKTIME_SCANOUTPOS_METHOD ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  drm_timestamp_monotonic ; 
 int /*<<< orphan*/  etime ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mono_time_offset ; 
 struct timeval FUNC8 (scalar_t__) ; 
 int FUNC9 (struct drm_device*,int,int*,int*) ; 
 scalar_t__ FUNC10 (struct timeval*) ; 
 int /*<<< orphan*/  tv_etime ; 

int FUNC11(struct drm_device *dev, int crtc,
					  int *max_error,
					  struct timeval *vblank_time,
					  unsigned flags,
					  struct drm_crtc *refcrtc)
{
	struct timeval stime, raw_time;
	struct drm_display_mode *mode;
	int vbl_status, vtotal, vdisplay;
	int vpos, hpos, i;
	s64 framedur_ns, linedur_ns, pixeldur_ns, delta_ns, duration_ns;
	bool invbl;

	if (crtc < 0 || crtc >= dev->num_crtcs) {
		FUNC1("Invalid crtc %d\n", crtc);
		return -EINVAL;
	}

	/* Scanout position query not supported? Should not happen. */
	if (!dev->driver->get_scanout_position) {
		FUNC1("Called from driver w/o get_scanout_position()!?\n");
		return -EIO;
	}

	mode = &refcrtc->hwmode;
	vtotal = mode->crtc_vtotal;
	vdisplay = mode->crtc_vdisplay;

	/* Durations of frames, lines, pixels in nanoseconds. */
	framedur_ns = refcrtc->framedur_ns;
	linedur_ns  = refcrtc->linedur_ns;
	pixeldur_ns = refcrtc->pixeldur_ns;

	/* If mode timing undefined, just return as no-op:
	 * Happens during initial modesetting of a crtc.
	 */
	if (vtotal <= 0 || vdisplay <= 0 || framedur_ns == 0) {
		FUNC0("crtc %d: Noop due to uninitialized mode.\n", crtc);
		return -EAGAIN;
	}

	/* Get current scanout position with system timestamp.
	 * Repeat query up to DRM_TIMESTAMP_MAXRETRIES times
	 * if single query takes longer than max_error nanoseconds.
	 *
	 * This guarantees a tight bound on maximum error if
	 * code gets preempted or delayed for some reason.
	 */
	for (i = 0; i < DRM_TIMESTAMP_MAXRETRIES; i++) {
		/* Disable preemption to make it very likely to
		 * succeed in the first iteration even on PREEMPT_RT kernel.
		 */
		FUNC2();

		/* Get system timestamp before query. */
		FUNC4(&stime);

		/* Get vertical and horizontal scanout pos. vpos, hpos. */
		vbl_status = dev->driver->get_scanout_position(dev, crtc, &vpos, &hpos);

		/* Get system timestamp after query. */
		FUNC4(&raw_time);
#ifdef FREEBSD_NOTYET
		if (!drm_timestamp_monotonic)
			mono_time_offset = ktime_get_monotonic_offset();
#endif /* FREEBSD_NOTYET */

		FUNC3();

		/* Return as no-op if scanout query unsupported or failed. */
		if (!(vbl_status & DRM_SCANOUTPOS_VALID)) {
			FUNC0("crtc %d : scanoutpos query failed [%d].\n",
				  crtc, vbl_status);
			return -EIO;
		}

		duration_ns = FUNC10(&raw_time) - FUNC10(&stime);

		/* Accept result with <  max_error nsecs timing uncertainty. */
		if (duration_ns <= (s64) *max_error)
			break;
	}

	/* Noisy system timing? */
	if (i == DRM_TIMESTAMP_MAXRETRIES) {
		FUNC0("crtc %d: Noisy timestamp %d us > %d us [%d reps].\n",
			  crtc, (int) duration_ns/1000, *max_error/1000, i);
	}

	/* Return upper bound of timestamp precision error. */
	*max_error = (int) duration_ns;

	/* Check if in vblank area:
	 * vpos is >=0 in video scanout area, but negative
	 * within vblank area, counting down the number of lines until
	 * start of scanout.
	 */
	invbl = vbl_status & DRM_SCANOUTPOS_INVBL;

	/* Convert scanout position into elapsed time at raw_time query
	 * since start of scanout at first display scanline. delta_ns
	 * can be negative if start of scanout hasn't happened yet.
	 */
	delta_ns = (s64) vpos * linedur_ns + (s64) hpos * pixeldur_ns;

	/* Is vpos outside nominal vblank area, but less than
	 * 1/100 of a frame height away from start of vblank?
	 * If so, assume this isn't a massively delayed vblank
	 * interrupt, but a vblank interrupt that fired a few
	 * microseconds before true start of vblank. Compensate
	 * by adding a full frame duration to the final timestamp.
	 * Happens, e.g., on ATI R500, R600.
	 *
	 * We only do this if DRM_CALLED_FROM_VBLIRQ.
	 */
	if ((flags & DRM_CALLED_FROM_VBLIRQ) && !invbl &&
	    ((vdisplay - vpos) < vtotal / 100)) {
		delta_ns = delta_ns - framedur_ns;

		/* Signal this correction as "applied". */
		vbl_status |= 0x8;
	}

#ifdef FREEBSD_NOTYET
	if (!drm_timestamp_monotonic)
		etime = ktime_sub(etime, mono_time_offset);

	/* save this only for debugging purposes */
	tv_etime = ktime_to_timeval(etime);
#endif /* FREEBSD_NOTYET */
	/* Subtract time delta from raw timestamp to get final
	 * vblank_time timestamp for end of vblank.
	 */
	*vblank_time = FUNC8(FUNC10(&raw_time) - delta_ns);

	FUNC0("crtc %d : v %d p(%d,%d)@ %jd.%jd -> %jd.%jd [e %d us, %d rep]\n",
		  crtc, (int)vbl_status, hpos, vpos, (uintmax_t)raw_time.tv_sec,
		  (uintmax_t)raw_time.tv_usec, (uintmax_t)vblank_time->tv_sec,
		  (uintmax_t)vblank_time->tv_usec, (int)duration_ns/1000, i);

	vbl_status = DRM_VBLANKTIME_SCANOUTPOS_METHOD;
	if (invbl)
		vbl_status |= DRM_VBLANKTIME_INVBL;

	return vbl_status;
}