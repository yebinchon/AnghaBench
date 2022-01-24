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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct vnode*,struct label*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct vnode*,int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  vnode_check_relabel ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct vnode *vp,
    struct label *newlabel)
{
	int error;

	FUNC0(vp, "mac_vnode_check_relabel");

	FUNC2(vnode_check_relabel, cred, vp, vp->v_label, newlabel);
	FUNC1(vnode_check_relabel, error, cred, vp, newlabel);

	return (error);
}