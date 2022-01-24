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
typedef  int const vm_ooffset_t ;
struct vnode {int dummy; } ;
typedef  int const daddr_t ;

/* Variables and functions */
 int FUNC0 (struct vnode*) ; 

__attribute__((used)) static daddr_t
FUNC1(struct vnode *vp, vm_ooffset_t off)
{
	const int biosize = FUNC0(vp);

	return (off / biosize);
}