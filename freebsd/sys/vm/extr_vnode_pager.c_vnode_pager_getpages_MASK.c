#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {struct vnode* handle; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ *,int,int*,int*) ; 

__attribute__((used)) static int
FUNC4(vm_object_t object, vm_page_t *m, int count, int *rbehind,
    int *rahead)
{
	struct vnode *vp;
	int rtval;

	vp = object->handle;
	FUNC2(object);
	rtval = FUNC3(vp, m, count, rbehind, rahead);
	FUNC0(rtval != EOPNOTSUPP,
	    ("vnode_pager: FS getpages not implemented\n"));
	FUNC1(object);
	return rtval;
}