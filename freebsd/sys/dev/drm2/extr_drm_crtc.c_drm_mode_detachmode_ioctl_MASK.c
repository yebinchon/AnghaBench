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
struct drm_mode_object {int dummy; } ;
struct drm_mode_modeinfo {int dummy; } ;
struct drm_mode_mode_cmd {int /*<<< orphan*/  connector_id; struct drm_mode_modeinfo mode; } ;
struct drm_file {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CONNECTOR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_display_mode*,struct drm_mode_modeinfo*) ; 
 int FUNC3 (struct drm_device*,struct drm_connector*,struct drm_display_mode*) ; 
 struct drm_mode_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_connector* FUNC5 (struct drm_mode_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev,
			      void *data, struct drm_file *file_priv)
{
	struct drm_mode_object *obj;
	struct drm_mode_mode_cmd *mode_cmd = data;
	struct drm_connector *connector;
	struct drm_display_mode mode;
	struct drm_mode_modeinfo *umode = &mode_cmd->mode;
	int ret;

	if (!FUNC1(dev, DRIVER_MODESET))
		return -EINVAL;

	FUNC6(&dev->mode_config.mutex);

	obj = FUNC4(dev, mode_cmd->connector_id, DRM_MODE_OBJECT_CONNECTOR);
	if (!obj) {
		ret = -EINVAL;
		goto out;
	}
	connector = FUNC5(obj);

	ret = FUNC2(&mode, umode);
	if (ret) {
		FUNC0("Invalid mode\n");
		goto out;
	}

	ret = FUNC3(dev, connector, &mode);
out:
	FUNC7(&dev->mode_config.mutex);
	return ret;
}