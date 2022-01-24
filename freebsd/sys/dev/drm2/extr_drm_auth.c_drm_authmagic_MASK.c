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
struct drm_file {int authenticated; int /*<<< orphan*/  master; } ;
struct drm_device {int dummy; } ;
struct drm_auth {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct drm_file* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	struct drm_auth *auth = data;
	struct drm_file *file;

	FUNC0("%u\n", auth->magic);
	if ((file = FUNC1(file_priv->master, auth->magic))) {
		file->authenticated = 1;
		FUNC2(file_priv->master, auth->magic);
		return 0;
	}
	return -EINVAL;
}