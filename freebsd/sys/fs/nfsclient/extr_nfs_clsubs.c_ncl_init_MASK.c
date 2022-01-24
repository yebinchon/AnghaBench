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
struct vfsconf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOD_NOT_AVAILABLE ; 
 int NFS_MAXASYNCDAEMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** ncl_iodmount ; 
 int /*<<< orphan*/ * ncl_iodwant ; 
 int /*<<< orphan*/  ncl_nfsiodnew_task ; 
 int /*<<< orphan*/  ncl_nfsiodnew_tq ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(struct vfsconf *vfsp)
{
	int i;

	/* Ensure async daemons disabled */
	for (i = 0; i < NFS_MAXASYNCDAEMON; i++) {
		ncl_iodwant[i] = NFSIOD_NOT_AVAILABLE;
		ncl_iodmount[i] = NULL;
	}
	FUNC0(&ncl_nfsiodnew_task, 0, ncl_nfsiodnew_tq, NULL);
	FUNC1();			/* Init the nfsnode table */

	return (0);
}