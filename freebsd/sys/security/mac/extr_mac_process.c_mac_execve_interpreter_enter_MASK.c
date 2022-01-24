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
struct label {int dummy; } ;

/* Variables and functions */
 int MPC_OBJECT_VNODE ; 
 int mac_labeled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*) ; 
 struct label* FUNC1 () ; 

void
FUNC2(struct vnode *interpvp,
    struct label **interpvplabel)
{

	if (mac_labeled & MPC_OBJECT_VNODE) {
		*interpvplabel = FUNC1();
		FUNC0(interpvp->v_label, *interpvplabel);
	} else
		*interpvplabel = NULL;
}