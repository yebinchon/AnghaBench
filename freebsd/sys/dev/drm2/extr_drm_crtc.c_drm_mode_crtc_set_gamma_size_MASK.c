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
typedef  int /*<<< orphan*/  uint16_t ;
struct drm_crtc {int gamma_size; int /*<<< orphan*/  gamma_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int ENOMEM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct drm_crtc *crtc,
				  int gamma_size)
{
	crtc->gamma_size = gamma_size;

	crtc->gamma_store = FUNC0(gamma_size * sizeof(uint16_t) * 3,
	    DRM_MEM_KMS, M_WAITOK | M_ZERO);
	if (!crtc->gamma_store) {
		crtc->gamma_size = 0;
		return -ENOMEM;
	}

	return 0;
}