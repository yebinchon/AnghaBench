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
struct flock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_REMOTE ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct vnode *vp, struct flock *fl, void *arg)
{

	FUNC0(vp, 0, F_UNLCK, fl, F_REMOTE);
	return (0);
}