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
typedef  int /*<<< orphan*/  vm_ooffset_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
typedef  int /*<<< orphan*/  daddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  um_fs; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static daddr_t
FUNC2(struct vnode *vp, vm_ooffset_t off)
{

	return (FUNC1(FUNC0(vp->v_mount)->um_fs, off));
}