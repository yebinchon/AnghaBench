#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_object_t ;
struct TYPE_4__ {TYPE_2__* tn_aobj; } ;
struct tmpfs_node {scalar_t__ tn_refcount; int tn_attached; int tn_vpstate; int tn_type; TYPE_1__ tn_reg; int /*<<< orphan*/  tn_link; int /*<<< orphan*/ * tn_vnode; } ;
struct tmpfs_mount {scalar_t__ tm_nodes_inuse; int /*<<< orphan*/  tm_node_pool; int /*<<< orphan*/  tm_pages_used; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  M_TMPFSNAME ; 
 int OBJ_TMPFS ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmpfs_mount*) ; 
 int TMPFS_VNODE_ALLOCATING ; 
#define  VBLK 134 
#define  VCHR 133 
#define  VDIR 132 
#define  VFIFO 131 
#define  VLNK 130 
#define  VREG 129 
#define  VSOCK 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct tmpfs_node*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  tn_entries ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool
FUNC14(struct tmpfs_mount *tmp, struct tmpfs_node *node,
    bool detach)
{
	vm_object_t uobj;

	FUNC4(tmp);
	FUNC5(node);
	FUNC0(node->tn_refcount > 0, ("node %p refcount zero", node));

	node->tn_refcount--;
	if (node->tn_attached && (detach || node->tn_refcount == 0)) {
		FUNC2(tmp->tm_nodes_inuse > 0);
		tmp->tm_nodes_inuse--;
		FUNC1(node, tn_entries);
		node->tn_attached = false;
	}
	if (node->tn_refcount > 0)
		return (false);

#ifdef INVARIANTS
	MPASS(node->tn_vnode == NULL);
	MPASS((node->tn_vpstate & TMPFS_VNODE_ALLOCATING) == 0);
#endif
	FUNC6(node);
	FUNC7(tmp);

	switch (node->tn_type) {
	case VBLK:
		/* FALLTHROUGH */
	case VCHR:
		/* FALLTHROUGH */
	case VDIR:
		/* FALLTHROUGH */
	case VFIFO:
		/* FALLTHROUGH */
	case VSOCK:
		break;

	case VLNK:
		FUNC9(node->tn_link, M_TMPFSNAME);
		break;

	case VREG:
		uobj = node->tn_reg.tn_aobj;
		if (uobj != NULL) {
			if (uobj->size != 0)
				FUNC8(&tmp->tm_pages_used, uobj->size);
			FUNC0((uobj->flags & OBJ_TMPFS) == 0,
			    ("leaked OBJ_TMPFS node %p vm_obj %p", node, uobj));
			FUNC13(uobj);
		}
		break;

	default:
		FUNC10("tmpfs_free_node: type %p %d", node, (int)node->tn_type);
	}

	FUNC12(tmp->tm_node_pool, node);
	FUNC3(tmp);
	FUNC11(tmp);
	return (true);
}