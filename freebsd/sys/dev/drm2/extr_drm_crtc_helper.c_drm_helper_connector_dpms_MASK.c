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
struct drm_encoder_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_encoder*,int /*<<< orphan*/ ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; struct drm_crtc* crtc; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;
struct drm_connector {int dpms; struct drm_encoder* encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

void FUNC6(struct drm_connector *connector, int mode)
{
	struct drm_encoder *encoder = connector->encoder;
	struct drm_crtc *crtc = encoder ? encoder->crtc : NULL;
	int old_dpms;

	if (mode == connector->dpms)
		return;

	old_dpms = connector->dpms;
	connector->dpms = mode;

	/* from off to on, do crtc then encoder */
	if (mode < old_dpms) {
		if (crtc) {
			struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
			if (crtc_funcs->dpms)
				(*crtc_funcs->dpms) (crtc,
						     FUNC0(crtc));
		}
		if (encoder) {
			struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
			if (encoder_funcs->dpms)
				(*encoder_funcs->dpms) (encoder,
							FUNC1(encoder));
		}
	}

	/* from on to off, do encoder then crtc */
	if (mode > old_dpms) {
		if (encoder) {
			struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
			if (encoder_funcs->dpms)
				(*encoder_funcs->dpms) (encoder,
							FUNC1(encoder));
		}
		if (crtc) {
			struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
			if (crtc_funcs->dpms)
				(*crtc_funcs->dpms) (crtc,
						     FUNC0(crtc));
		}
	}

	return;
}