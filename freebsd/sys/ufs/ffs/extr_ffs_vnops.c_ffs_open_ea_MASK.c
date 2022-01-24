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
struct ufs2_dinode {int /*<<< orphan*/  di_extsize; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ea_refs; scalar_t__ i_ea_error; int /*<<< orphan*/  i_ea_len; int /*<<< orphan*/ * i_ea_area; struct ufs2_dinode* i_din2; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int FUNC2 (int /*<<< orphan*/ **,struct vnode*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static int
FUNC4(struct vnode *vp, struct ucred *cred, struct thread *td)
{
	struct inode *ip;
	struct ufs2_dinode *dp;
	int error;

	ip = FUNC0(vp);

	FUNC1(vp);
	if (ip->i_ea_area != NULL) {
		ip->i_ea_refs++;
		FUNC3(vp);
		return (0);
	}
	dp = ip->i_din2;
	error = FUNC2(&ip->i_ea_area, vp, td, 0);
	if (error) {
		FUNC3(vp);
		return (error);
	}
	ip->i_ea_len = dp->di_extsize;
	ip->i_ea_error = 0;
	ip->i_ea_refs++;
	FUNC3(vp);
	return (0);
}