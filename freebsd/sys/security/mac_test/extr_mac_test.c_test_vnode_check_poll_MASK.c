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
struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_VNODE ; 
 int /*<<< orphan*/  vnode_check_poll ; 

__attribute__((used)) static int
FUNC2(struct ucred *active_cred, struct ucred *file_cred,
    struct vnode *vp, struct label *vplabel)
{

	FUNC1(active_cred->cr_label, MAGIC_CRED);
	if (file_cred != NULL)
		FUNC1(file_cred->cr_label, MAGIC_CRED);
	FUNC1(vplabel, MAGIC_VNODE);
	FUNC0(vnode_check_poll);

	return (0);
}