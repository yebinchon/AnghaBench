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
struct vnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static void
FUNC4(struct vnode *vnp)
{

	FUNC0(vnp, LK_EXCLUSIVE);
	FUNC3(vnp);
	FUNC1(vnp, 0);
	FUNC2(vnp);
}