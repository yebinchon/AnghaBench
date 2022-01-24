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

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  newnfsd_mtx ; 
 int /*<<< orphan*/  nfs_clstate_mutex ; 
 int /*<<< orphan*/  nfs_state_mutex ; 

void
FUNC1(void)
{
	static int inited = 0;

	if (inited)
		return;
	inited = 1;
	/* Initialize SMP locks used by both client and server. */
	FUNC0(&newnfsd_mtx, "newnfsd_mtx", NULL, MTX_DEF);
	FUNC0(&nfs_state_mutex, "nfs_state_mutex", NULL, MTX_DEF);
	FUNC0(&nfs_clstate_mutex, "nfs_clstate_mutex", NULL, MTX_DEF);
}