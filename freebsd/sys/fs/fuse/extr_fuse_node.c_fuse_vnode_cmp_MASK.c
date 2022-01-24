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
typedef  scalar_t__ uint64_t ;
struct vnode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 

int
FUNC1(struct vnode *vp, void *nidp)
{
	return (FUNC0(vp) != *((uint64_t *)nidp));
}