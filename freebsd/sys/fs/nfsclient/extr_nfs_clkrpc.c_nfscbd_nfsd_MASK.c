#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct nfsd_nfscbd_args {int /*<<< orphan*/  principal; } ;
typedef  int /*<<< orphan*/  principal ;
struct TYPE_3__ {int sp_minthreads; int sp_maxthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  NFSV4_CBVERS ; 
 int /*<<< orphan*/  NFS_CALLBCKPROG ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_numnfscbd ; 
 TYPE_1__* nfscbd_pool ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(struct thread *td, struct nfsd_nfscbd_args *args)
{
	char principal[128];
	int error;

	if (args != NULL) {
		error = FUNC2(args->principal, principal,
		    sizeof(principal), NULL);
		if (error)
			return (error);
	} else {
		principal[0] = '\0';
	}

	/*
	 * Only the first nfsd actually does any work. The RPC code
	 * adds threads to it as needed. Any extra processes offered
	 * by nfsd just exit. If nfsd is new enough, it will call us
	 * once with a structure that specifies how many threads to
	 * use.
	 */
	FUNC0();
	if (nfs_numnfscbd == 0) {
		nfs_numnfscbd++;

		FUNC1();

		if (principal[0] != '\0')
			FUNC5(principal, "kerberosv5",
			    GSS_C_INDEFINITE, NFS_CALLBCKPROG, NFSV4_CBVERS);

		nfscbd_pool->sp_minthreads = 4;
		nfscbd_pool->sp_maxthreads = 4;
			
		FUNC6(nfscbd_pool);

		FUNC4(NFS_CALLBCKPROG, NFSV4_CBVERS);

		FUNC0();
		nfs_numnfscbd--;
		FUNC3(1);
	}
	FUNC1();

	return (0);
}