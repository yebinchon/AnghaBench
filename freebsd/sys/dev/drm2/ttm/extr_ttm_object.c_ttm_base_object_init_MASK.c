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
struct ttm_object_file {struct ttm_object_device* tdev; } ;
struct ttm_object_device {int /*<<< orphan*/  object_lock; int /*<<< orphan*/  object_hash; } ;
struct ttm_base_object {int shareable; void (* refcount_release ) (struct ttm_base_object**) ;void (* ref_obj_release ) (struct ttm_base_object*,int) ;int object_type; int /*<<< orphan*/  hash; int /*<<< orphan*/  refcount; int /*<<< orphan*/  tfile; } ;
typedef  enum ttm_object_type { ____Placeholder_ttm_object_type } ttm_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_REF_USAGE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_base_object**) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_object_file*) ; 
 int FUNC8 (struct ttm_object_file*,struct ttm_base_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct ttm_object_file *tfile,
			 struct ttm_base_object *base,
			 bool shareable,
			 enum ttm_object_type object_type,
			 void (*rcount_release) (struct ttm_base_object **),
			 void (*ref_obj_release) (struct ttm_base_object *,
						  enum ttm_ref_type ref_type))
{
	struct ttm_object_device *tdev = tfile->tdev;
	int ret;

	base->shareable = shareable;
	base->tfile = FUNC7(tfile);
	base->refcount_release = rcount_release;
	base->ref_obj_release = ref_obj_release;
	base->object_type = object_type;
	FUNC2(&base->refcount, 1);
	FUNC3(&tdev->object_lock, "ttmbao");
	FUNC4(&tdev->object_lock);
	ret = FUNC0(&tdev->object_hash,
					    &base->hash,
					    (unsigned long)base, 31, 0, 0);
	FUNC5(&tdev->object_lock);
	if (FUNC9(ret != 0))
		goto out_err0;

	ret = FUNC8(tfile, base, TTM_REF_USAGE, NULL);
	if (FUNC9(ret != 0))
		goto out_err1;

	FUNC6(&base);

	return 0;
out_err1:
	FUNC4(&tdev->object_lock);
	(void)FUNC1(&tdev->object_hash, &base->hash);
	FUNC5(&tdev->object_lock);
out_err0:
	return ret;
}