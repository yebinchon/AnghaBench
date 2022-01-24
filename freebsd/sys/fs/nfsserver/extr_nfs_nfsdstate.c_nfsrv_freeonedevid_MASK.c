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
struct nfsdevice {struct nfsdevice* nfsdev_host; struct nfsdevice* nfsdev_flexaddr; struct nfsdevice* nfsdev_fileaddr; int /*<<< orphan*/ ** nfsdev_dsdir; int /*<<< orphan*/ * nfsdev_dvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsrv_devidcnt ; 
 int nfsrv_dsdirsize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nfsdevice *ds)
{
	int i;

	FUNC0(&nfsrv_devidcnt, -1);
	FUNC2(ds->nfsdev_dvp);
	for (i = 0; i < nfsrv_dsdirsize; i++)
		if (ds->nfsdev_dsdir[i] != NULL)
			FUNC2(ds->nfsdev_dsdir[i]);
	FUNC1(ds->nfsdev_fileaddr, M_NFSDSTATE);
	FUNC1(ds->nfsdev_flexaddr, M_NFSDSTATE);
	FUNC1(ds->nfsdev_host, M_NFSDSTATE);
	FUNC1(ds, M_NFSDSTATE);
}