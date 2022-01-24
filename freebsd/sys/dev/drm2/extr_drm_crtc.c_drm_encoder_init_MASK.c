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
struct drm_encoder_funcs {int dummy; } ;
struct drm_encoder {int encoder_type; int /*<<< orphan*/  head; struct drm_encoder_funcs const* funcs; struct drm_device* dev; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  num_encoder; int /*<<< orphan*/  encoder_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_ENCODER ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev,
		      struct drm_encoder *encoder,
		      const struct drm_encoder_funcs *funcs,
		      int encoder_type)
{
	int ret;

	FUNC2(&dev->mode_config.mutex);

	ret = FUNC0(dev, &encoder->base, DRM_MODE_OBJECT_ENCODER);
	if (ret)
		goto out;

	encoder->dev = dev;
	encoder->encoder_type = encoder_type;
	encoder->funcs = funcs;

	FUNC1(&encoder->head, &dev->mode_config.encoder_list);
	dev->mode_config.num_encoder++;

 out:
	FUNC3(&dev->mode_config.mutex);

	return ret;
}