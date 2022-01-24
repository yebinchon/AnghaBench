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
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_PFSVNCACHE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfs_exit ; 
 int /*<<< orphan*/  pfs_exit_tag ; 
 int /*<<< orphan*/  pfs_vncache_hash ; 
 int /*<<< orphan*/  pfs_vncache_hashtbl ; 
 int /*<<< orphan*/  pfs_vncache_mutex ; 
 int /*<<< orphan*/  process_exit ; 

void
FUNC3(void)
{

	FUNC2(&pfs_vncache_mutex, "pfs_vncache", NULL, MTX_DEF);
	pfs_vncache_hashtbl = FUNC1(maxproc / 4, M_PFSVNCACHE, &pfs_vncache_hash);
	pfs_exit_tag = FUNC0(process_exit, pfs_exit, NULL,
	    EVENTHANDLER_PRI_ANY);
}