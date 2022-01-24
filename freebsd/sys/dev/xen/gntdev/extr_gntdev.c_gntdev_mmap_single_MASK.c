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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vm_object {int dummy; } ;
struct per_user_data {int dummy; } ;
struct gntdev_gref {int dummy; } ;
struct gntdev_gmap {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void**) ; 
 struct gntdev_gmap* FUNC2 (struct per_user_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gntdev_gref* FUNC3 (struct per_user_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct per_user_data*,struct gntdev_gmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vm_object**,int) ; 
 int FUNC5 (struct per_user_data*,struct gntdev_gref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_object**) ; 

__attribute__((used)) static int
FUNC6(struct cdev *cdev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **object, int nprot)
{
	int error;
	uint32_t count;
	struct gntdev_gref *gref_start;
	struct gntdev_gmap *gmap_start;
	struct per_user_data *priv_user;

	error = FUNC1((void**) &priv_user);
	if (error != 0)
		return (EINVAL);

	count = FUNC0(size);

	gref_start = FUNC3(priv_user, *offset, count);
	if (gref_start) {
		error = FUNC5(priv_user, gref_start, count, size, object);
		return (error);
	}

	gmap_start = FUNC2(priv_user, *offset, count);
	if (gmap_start) {
		error = FUNC4(priv_user, gmap_start, offset, size, object,
		    nprot);
		return (error);
	}

	return (EINVAL);
}