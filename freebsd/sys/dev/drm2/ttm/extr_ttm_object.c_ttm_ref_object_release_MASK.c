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
struct ttm_ref_object {size_t ref_type; struct ttm_base_object* obj; int /*<<< orphan*/  head; int /*<<< orphan*/  hash; struct ttm_object_file* tfile; } ;
struct ttm_object_file {int /*<<< orphan*/  lock; struct drm_open_hash* ref_hash; TYPE_1__* tdev; } ;
struct ttm_mem_global {int dummy; } ;
struct ttm_base_object {int /*<<< orphan*/  (* ref_obj_release ) (struct ttm_base_object*,size_t) ;} ;
struct drm_open_hash {int dummy; } ;
struct TYPE_2__ {struct ttm_mem_global* mem_glob; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TTM_OBJ_REF ; 
 size_t TTM_REF_USAGE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_open_hash*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_ref_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_base_object*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_base_object**) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_mem_global*,int) ; 

__attribute__((used)) static void FUNC8(struct ttm_ref_object *ref)
{
	struct ttm_base_object *base = ref->obj;
	struct ttm_object_file *tfile = ref->tfile;
	struct drm_open_hash *ht;
	struct ttm_mem_global *mem_glob = tfile->tdev->mem_glob;

	ht = &tfile->ref_hash[ref->ref_type];
	(void)FUNC0(ht, &ref->hash);
	FUNC2(&ref->head);
	FUNC4(&tfile->lock);

	if (ref->ref_type != TTM_REF_USAGE && base->ref_obj_release)
		base->ref_obj_release(base, ref->ref_type);

	FUNC6(&ref->obj);
	FUNC7(mem_glob, sizeof(*ref));
	FUNC1(ref, M_TTM_OBJ_REF);
	FUNC3(&tfile->lock);
}