#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_mtx; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  newnfs_numnfsd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  newnfsd_callout ; 
 int /*<<< orphan*/  newnfsd_mtx ; 
 int /*<<< orphan*/  nfs_clstate_mutex ; 
 int /*<<< orphan*/  nfs_nameid_mutex ; 
 int /*<<< orphan*/  nfs_numnfscbd ; 
 int /*<<< orphan*/  nfs_req_mutex ; 
 int /*<<< orphan*/  nfs_slock_mutex ; 
 int /*<<< orphan*/  nfs_sockl_mutex ; 
 int /*<<< orphan*/  nfs_state_mutex ; 
 int /*<<< orphan*/ * nfsd_call_nfscommon ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  nfsrv_devidhead ; 
 int /*<<< orphan*/  nfsrv_dslock_mtx ; 
 int /*<<< orphan*/  nfsrv_nfsuserd ; 
 TYPE_1__ nfsrv_nfsuserdsock ; 
 int /*<<< orphan*/ * nfssvc_nfscommon ; 

__attribute__((used)) static int
FUNC9(module_t mod, int type, void *data)
{
	int error = 0;
	static int loaded = 0;

	switch (type) {
	case MOD_LOAD:
		if (loaded)
			goto out;
		FUNC7();
		FUNC5(&nfs_nameid_mutex, "nfs_nameid_mutex", NULL, MTX_DEF);
		FUNC5(&nfs_sockl_mutex, "nfs_sockl_mutex", NULL, MTX_DEF);
		FUNC5(&nfs_slock_mutex, "nfs_slock_mutex", NULL, MTX_DEF);
		FUNC5(&nfs_req_mutex, "nfs_req_mutex", NULL, MTX_DEF);
		FUNC5(&nfsrv_nfsuserdsock.nr_mtx, "nfsuserd", NULL,
		    MTX_DEF);
		FUNC5(&nfsrv_dslock_mtx, "nfs4ds", NULL, MTX_DEF);
		FUNC1(&nfsrv_devidhead);
		FUNC3(&newnfsd_callout, 1);
		FUNC6();
		nfsd_call_nfscommon = nfssvc_nfscommon;
		loaded = 1;
		break;

	case MOD_UNLOAD:
		if (newnfs_numnfsd != 0 || nfsrv_nfsuserd != 0 ||
		    nfs_numnfscbd != 0) {
			error = EBUSY;
			break;
		}

		nfsd_call_nfscommon = NULL;
		FUNC2(&newnfsd_callout);
		/* Clean out the name<-->id cache. */
		FUNC8();
		/* and get rid of the mutexes */
		FUNC4(&nfs_nameid_mutex);
		FUNC4(&newnfsd_mtx);
		FUNC4(&nfs_state_mutex);
		FUNC4(&nfs_clstate_mutex);
		FUNC4(&nfs_sockl_mutex);
		FUNC4(&nfs_slock_mutex);
		FUNC4(&nfs_req_mutex);
		FUNC4(&nfsrv_nfsuserdsock.nr_mtx);
		FUNC4(&nfsrv_dslock_mtx);
		loaded = 0;
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

out:
	FUNC0(error);
	return error;
}