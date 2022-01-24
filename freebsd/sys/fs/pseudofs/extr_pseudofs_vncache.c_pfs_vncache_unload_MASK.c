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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfs_exit_tag ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pfs_vncache_entries ; 
 int /*<<< orphan*/  pfs_vncache_mutex ; 
 int /*<<< orphan*/  process_exit ; 

void
FUNC4(void)
{

	FUNC0(process_exit, pfs_exit_tag);
	FUNC3();
	FUNC1(pfs_vncache_entries == 0,
	    ("%d vncache entries remaining", pfs_vncache_entries));
	FUNC2(&pfs_vncache_mutex);
}