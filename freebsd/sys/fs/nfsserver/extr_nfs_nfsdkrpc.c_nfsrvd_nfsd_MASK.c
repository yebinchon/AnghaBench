#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_flag2; } ;
struct nfsd_nfsd_args {int /*<<< orphan*/  maxthreads; int /*<<< orphan*/  minthreads; int /*<<< orphan*/  principal; } ;
typedef  int /*<<< orphan*/  principal ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_5__ {int modifyfs; } ;
struct TYPE_4__ {int /*<<< orphan*/  sp_maxthreads; int /*<<< orphan*/  sp_minthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t NFSPROC_GETATTR ; 
 size_t NFSV4OP_GETATTR ; 
 int /*<<< orphan*/  NFS_PROG ; 
 int /*<<< orphan*/  NFS_VER2 ; 
 int /*<<< orphan*/  NFS_VER3 ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int /*<<< orphan*/  P2_AST_SU ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ newnfs_numnfsd ; 
 int /*<<< orphan*/  nfsdev_time ; 
 int FUNC6 (struct nfsd_nfsd_args*,struct thread*) ; 
 scalar_t__ nfsrv_devidcnt ; 
 int* nfsrv_writerpc ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* nfsrvd_pool ; 
 TYPE_2__* nfsv4_opflag ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  time_second ; 

int
FUNC12(struct thread *td, struct nfsd_nfsd_args *args)
{
	char principal[MAXHOSTNAMELEN + 5];
	struct proc *p;
	int error = 0;
	bool_t ret2, ret3, ret4;

	error = FUNC5(args->principal, principal, sizeof (principal),
	    NULL);
	if (error)
		goto out;

	/*
	 * Only the first nfsd actually does any work. The RPC code
	 * adds threads to it as needed. Any extra processes offered
	 * by nfsd just exit. If nfsd is new enough, it will call us
	 * once with a structure that specifies how many threads to
	 * use.
	 */
	FUNC0();
	if (newnfs_numnfsd == 0) {
		nfsdev_time = time_second;
		p = td->td_proc;
		FUNC3(p);
		p->p_flag2 |= P2_AST_SU;
		FUNC4(p);
		newnfs_numnfsd++;

		FUNC1();
		error = FUNC6(args, td);
		if (error == 0) {
			/* An empty string implies AUTH_SYS only. */
			if (principal[0] != '\0') {
				ret2 = FUNC10(principal,
				    "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
				    NFS_VER2);
				ret3 = FUNC10(principal,
				    "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
				    NFS_VER3);
				ret4 = FUNC10(principal,
				    "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
				    NFS_VER4);
	
				if (!ret2 || !ret3 || !ret4)
					FUNC8(
					    "nfsd: can't register svc name\n");
			}
	
			nfsrvd_pool->sp_minthreads = args->minthreads;
			nfsrvd_pool->sp_maxthreads = args->maxthreads;
				
			/*
			 * If this is a pNFS service, make Getattr do a
			 * vn_start_write(), so it can do a vn_set_extattr().
			 */
			if (nfsrv_devidcnt > 0) {
				nfsrv_writerpc[NFSPROC_GETATTR] = 1;
				nfsv4_opflag[NFSV4OP_GETATTR].modifyfs = 1;
			}

			FUNC11(nfsrvd_pool);
	
			/* Reset Getattr to not do a vn_start_write(). */
			nfsrv_writerpc[NFSPROC_GETATTR] = 0;
			nfsv4_opflag[NFSV4OP_GETATTR].modifyfs = 0;

			if (principal[0] != '\0') {
				FUNC9(NFS_PROG, NFS_VER2);
				FUNC9(NFS_PROG, NFS_VER3);
				FUNC9(NFS_PROG, NFS_VER4);
			}
		}
		FUNC0();
		newnfs_numnfsd--;
		FUNC7(1);
		FUNC3(p);
		p->p_flag2 &= ~P2_AST_SU;
		FUNC4(p);
	}
	FUNC1();

out:
	FUNC2(error);
	return (error);
}