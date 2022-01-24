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
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_property {int flags; int num_values; char* name; struct drm_property* values; int /*<<< orphan*/  head; int /*<<< orphan*/  enum_blob_list; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  property_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_KMS ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_PROPERTY ; 
 int DRM_PROP_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

struct drm_property *FUNC6(struct drm_device *dev, int flags,
					 const char *name, int num_values)
{
	struct drm_property *property = NULL;
	int ret;

	property = FUNC4(sizeof(struct drm_property), DRM_MEM_KMS,
	    M_WAITOK | M_ZERO);
	if (!property)
		return NULL;

	if (num_values) {
		property->values = FUNC4(sizeof(uint64_t)*num_values, DRM_MEM_KMS,
		    M_WAITOK | M_ZERO);
		if (!property->values)
			goto fail;
	}

	ret = FUNC1(dev, &property->base, DRM_MODE_OBJECT_PROPERTY);
	if (ret)
		goto fail;

	property->flags = flags;
	property->num_values = num_values;
	FUNC0(&property->enum_blob_list);

	if (name) {
		FUNC5(property->name, name, DRM_PROP_NAME_LEN);
		property->name[DRM_PROP_NAME_LEN-1] = '\0';
	}

	FUNC3(&property->head, &dev->mode_config.property_list);
	return property;
fail:
	FUNC2(property->values, DRM_MEM_KMS);
	FUNC2(property, DRM_MEM_KMS);
	return NULL;
}