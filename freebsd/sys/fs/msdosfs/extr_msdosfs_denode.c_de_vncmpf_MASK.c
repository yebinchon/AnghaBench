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
struct denode {scalar_t__ de_inode; scalar_t__ de_refcnt; } ;

/* Variables and functions */
 struct denode* FUNC0 (struct vnode*) ; 

__attribute__((used)) static int
FUNC1(struct vnode *vp, void *arg)
{
	struct denode *de;
	uint64_t *a;

	a = arg;
	de = FUNC0(vp);
	return (de->de_inode != *a) || (de->de_refcnt <= 0);
}