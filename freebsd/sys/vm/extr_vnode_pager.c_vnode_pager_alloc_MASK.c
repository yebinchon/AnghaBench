#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  TYPE_4__* vm_object_t ;
struct vnode {scalar_t__ v_usecount; int v_vflag; TYPE_4__* v_object; } ;
struct ucred {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  dr_policy; } ;
struct TYPE_12__ {scalar_t__ writemappings; int /*<<< orphan*/  vnp_size; } ;
struct TYPE_13__ {TYPE_1__ vnp; } ;
struct TYPE_15__ {int ref_count; int /*<<< orphan*/  type; void* handle; TYPE_3__ domain; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  OBJT_DEAD ; 
 int /*<<< orphan*/  OBJT_VNODE ; 
 int /*<<< orphan*/  OBJ_SIZEVNLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int VV_VMSIZEVNLOCK ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_domainset ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

vm_object_t
FUNC15(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
	vm_object_t object;
	struct vnode *vp;

	/*
	 * Pageout to vnode, no can do yet.
	 */
	if (handle == NULL)
		return (NULL);

	vp = (struct vnode *)handle;
	FUNC0(vp, "vnode_pager_alloc");
	FUNC1(vp->v_usecount != 0, ("vnode_pager_alloc: no vnode reference"));
retry:
	object = vp->v_object;

	if (object == NULL) {
		/*
		 * Add an object of the appropriate size
		 */
		object = FUNC10(OBJT_VNODE,
		    FUNC2(FUNC9(size)));

		object->un_pager.vnp.vnp_size = size;
		object->un_pager.vnp.writemappings = 0;
		object->domain.dr_policy = vnode_domainset;
		object->handle = handle;
		if ((vp->v_vflag & VV_VMSIZEVNLOCK) != 0) {
			FUNC5(object);
			FUNC13(object, OBJ_SIZEVNLOCK);
			FUNC6(object);
		}
		FUNC3(vp);
		if (vp->v_object != NULL) {
			/*
			 * Object has been created while we were allocating.
			 */
			FUNC4(vp);
			FUNC5(object);
			FUNC1(object->ref_count == 1,
			    ("leaked ref %p %d", object, object->ref_count));
			object->type = OBJT_DEAD;
			FUNC8(&object->ref_count, 0);
			FUNC6(object);
			FUNC12(object);
			goto retry;
		}
		vp->v_object = object;
		FUNC4(vp);
	} else {
		FUNC5(object);
		FUNC7(&object->ref_count);
#if VM_NRESERVLEVEL > 0
		vm_object_color(object, 0);
#endif
		FUNC6(object);
	}
	FUNC14(vp);
	return (object);
}