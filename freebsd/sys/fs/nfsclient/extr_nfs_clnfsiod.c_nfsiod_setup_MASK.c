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
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ NFS_MAXASYNCDAEMON ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 
 scalar_t__ ncl_numasync ; 
 scalar_t__ nfs_iodmin ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void *dummy)
{
	int error;

	FUNC2("vfs.nfs.iodmin", &nfs_iodmin);
	FUNC4();
	FUNC0();
	/* Silently limit the start number of nfsiod's */
	if (nfs_iodmin > NFS_MAXASYNCDAEMON)
		nfs_iodmin = NFS_MAXASYNCDAEMON;

	while (ncl_numasync < nfs_iodmin) {
		error = FUNC3();
		if (error == -1)
			FUNC5("nfsiod_setup: nfs_nfsiodnew failed");
	}
	FUNC1();
}