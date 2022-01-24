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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  nat64lsn_aliaslink_zone ; 
 int /*<<< orphan*/  nat64lsn_host_zone ; 
 int /*<<< orphan*/  nat64lsn_job_zone ; 
 int /*<<< orphan*/  nat64lsn_pg_zone ; 
 int /*<<< orphan*/  nat64lsn_pgchunk_zone ; 
 int /*<<< orphan*/  nat64lsn_state_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{

	/* XXX: epoch_task drain */
	FUNC0();
	FUNC1(nat64lsn_host_zone);
	FUNC1(nat64lsn_pgchunk_zone);
	FUNC1(nat64lsn_pg_zone);
	FUNC1(nat64lsn_aliaslink_zone);
	FUNC1(nat64lsn_state_zone);
	FUNC1(nat64lsn_job_zone);
}