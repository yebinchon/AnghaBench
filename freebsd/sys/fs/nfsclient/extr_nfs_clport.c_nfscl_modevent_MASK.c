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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ncl_call_invalcaches ; 
 int /*<<< orphan*/ * ncl_invalcaches ; 
 int /*<<< orphan*/  ncl_iod_mutex ; 
 int /*<<< orphan*/  ncl_pbuf_zone ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  nfs_numnfscbd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * nfsd_call_nfscl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfssvc_nfscl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(module_t mod, int type, void *data)
{
	int error = 0;
	static int loaded = 0;

	switch (type) {
	case MOD_LOAD:
		if (loaded)
			return (0);
		FUNC4();
		FUNC3(&ncl_iod_mutex, "ncl_iod_mutex", NULL, MTX_DEF);
		FUNC5();
		FUNC0();
		FUNC6(0);
		FUNC1();
		ncl_call_invalcaches = ncl_invalcaches;
		nfsd_call_nfscl = nfssvc_nfscl;
		loaded = 1;
		break;

	case MOD_UNLOAD:
		if (nfs_numnfscbd != 0) {
			error = EBUSY;
			break;
		}

		/*
		 * XXX: Unloading of nfscl module is unsupported.
		 */
#if 0
		ncl_call_invalcaches = NULL;
		nfsd_call_nfscl = NULL;
		uma_zdestroy(ncl_pbuf_zone);
		/* and get rid of the mutexes */
		mtx_destroy(&ncl_iod_mutex);
		loaded = 0;
		break;
#else
		/* FALLTHROUGH */
#endif
	default:
		error = EOPNOTSUPP;
		break;
	}
	return error;
}