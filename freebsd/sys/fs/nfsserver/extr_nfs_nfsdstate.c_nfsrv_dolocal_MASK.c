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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  void* uint64_t ;
struct nfsrollback {int rlck_type; void* rlck_end; void* rlck_first; } ;
struct nfslockfile {int /*<<< orphan*/  lf_rollback; } ;
struct TYPE_2__ {scalar_t__* lval; } ;
struct nfslockconflict {int cl_flags; int cl_ownerlen; int /*<<< orphan*/  cl_owner; int /*<<< orphan*/  cl_end; scalar_t__ cl_first; TYPE_1__ cl_clientid; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int F_RDLCK ; 
 int F_UNLCK ; 
 int F_WRLCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfsrollback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDROLLBACK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NFS64BITSSET ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NFSLCK_READ ; 
 int NFSLCK_WRITE ; 
 struct nfsrollback* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfslockfile*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rlck_list ; 

__attribute__((used)) static int
FUNC6(vnode_t vp, struct nfslockfile *lfp, int flags, int oldflags,
    uint64_t first, uint64_t end, struct nfslockconflict *cfp, NFSPROC_T *p)
{
	struct nfsrollback *rlp;
	int error = 0, ltype, oldltype;

	if (flags & NFSLCK_WRITE)
		ltype = F_WRLCK;
	else if (flags & NFSLCK_READ)
		ltype = F_RDLCK;
	else
		ltype = F_UNLCK;
	if (oldflags & NFSLCK_WRITE)
		oldltype = F_WRLCK;
	else if (oldflags & NFSLCK_READ)
		oldltype = F_RDLCK;
	else
		oldltype = F_UNLCK;
	if (ltype == oldltype || (oldltype == F_WRLCK && ltype == F_RDLCK))
		/* nothing to do */
		goto out;
	error = FUNC5(vp, ltype, first, end, p);
	if (error != 0) {
		if (cfp != NULL) {
			cfp->cl_clientid.lval[0] = 0;
			cfp->cl_clientid.lval[1] = 0;
			cfp->cl_first = 0;
			cfp->cl_end = NFS64BITSSET;
			cfp->cl_flags = NFSLCK_WRITE;
			cfp->cl_ownerlen = 5;
			FUNC1("LOCAL", cfp->cl_owner, 5);
		}
		FUNC4(vp, lfp, p);
	} else if (ltype != F_UNLCK) {
		rlp = FUNC3(sizeof (struct nfsrollback), M_NFSDROLLBACK,
		    M_WAITOK);
		rlp->rlck_first = first;
		rlp->rlck_end = end;
		rlp->rlck_type = oldltype;
		FUNC0(&lfp->lf_rollback, rlp, rlck_list);
	}

out:
	FUNC2(error);
	return (error);
}