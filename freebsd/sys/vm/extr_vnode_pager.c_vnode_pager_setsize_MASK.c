#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_ooffset_t ;
typedef  TYPE_3__* vm_object_t ;
struct vnode {struct mount* v_mount; TYPE_3__* v_object; } ;
struct mount {int mnt_kern_flag; } ;
struct TYPE_8__ {int vnp_size; } ;
struct TYPE_9__ {TYPE_1__ vnp; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ size; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNTK_VMSETSIZE_BUG ; 
 scalar_t__ OBJT_DEAD ; 
 scalar_t__ OBJT_VNODE ; 
 scalar_t__ FUNC1 (int) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VM_ALLOC_NOCREAT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(struct vnode *vp, vm_ooffset_t nsize)
{
	vm_object_t object;
	vm_page_t m;
	vm_pindex_t nobjsize;

	if ((object = vp->v_object) == NULL)
		return;
#ifdef DEBUG_VFS_LOCKS
	{
		struct mount *mp;

		mp = vp->v_mount;
		if (mp != NULL && (mp->mnt_kern_flag & MNTK_VMSETSIZE_BUG) == 0)
			assert_vop_elocked(vp,
			    "vnode_pager_setsize and not locked vnode");
	}
#endif
	FUNC2(object);
	if (object->type == OBJT_DEAD) {
		FUNC3(object);
		return;
	}
	FUNC0(object->type == OBJT_VNODE,
	    ("not vnode-backed object %p", object));
	if (nsize == object->un_pager.vnp.vnp_size) {
		/*
		 * Hasn't changed size
		 */
		FUNC3(object);
		return;
	}
	nobjsize = FUNC1(nsize + PAGE_MASK);
	if (nsize < object->un_pager.vnp.vnp_size) {
		/*
		 * File has shrunk. Toss any cached pages beyond the new EOF.
		 */
		if (nobjsize < object->size)
			FUNC7(object, nobjsize, object->size,
			    0);
		/*
		 * this gets rid of garbage at the end of a page that is now
		 * only partially backed by the vnode.
		 *
		 * XXX for some reason (I don't know yet), if we take a
		 * completely invalid page and mark it partially valid
		 * it can screw up NFS reads, so we don't allow the case.
		 */
		if (!(nsize & PAGE_MASK))
			goto out;
		m = FUNC9(object, FUNC1(nsize), VM_ALLOC_NOCREAT);
		if (m == NULL)
			goto out;
		if (!FUNC10(m)) {
			int base = (int)nsize & PAGE_MASK;
			int size = PAGE_SIZE - base;

			/*
			 * Clear out partial-page garbage in case
			 * the page has been mapped.
			 */
			FUNC5(m, base, size);

			/*
			 * Update the valid bits to reflect the blocks that
			 * have been zeroed.  Some of these valid bits may
			 * have already been set.
			 */
			FUNC11(m, base, size);

			/*
			 * Round "base" to the next block boundary so that the
			 * dirty bit for a partially zeroed block is not
			 * cleared.
			 */
			base = FUNC6(base, DEV_BSIZE);

			/*
			 * Clear out partial-page dirty bits.
			 *
			 * note that we do not clear out the valid
			 * bits.  This would prevent bogus_page
			 * replacement from working properly.
			 */
			FUNC8(m, base, PAGE_SIZE - base);
		}
		FUNC12(m);
	}
out:
	object->un_pager.vnp.vnp_size = nsize;
	object->size = nobjsize;
	FUNC3(object);
}