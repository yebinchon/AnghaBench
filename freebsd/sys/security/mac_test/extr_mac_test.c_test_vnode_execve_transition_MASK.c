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
struct image_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_VNODE ; 
 int /*<<< orphan*/  vnode_execve_transition ; 

__attribute__((used)) static void
FUNC2(struct ucred *old, struct ucred *new,
    struct vnode *vp, struct label *filelabel,
    struct label *interpvplabel, struct image_params *imgp,
    struct label *execlabel)
{

	FUNC1(old->cr_label, MAGIC_CRED);
	FUNC1(new->cr_label, MAGIC_CRED);
	FUNC1(filelabel, MAGIC_VNODE);
	FUNC1(interpvplabel, MAGIC_VNODE);
	FUNC1(execlabel, MAGIC_CRED);
	FUNC0(vnode_execve_transition);
}