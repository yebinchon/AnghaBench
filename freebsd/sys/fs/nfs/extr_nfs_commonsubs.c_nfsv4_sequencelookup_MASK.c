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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct nfsmount {int /*<<< orphan*/  nm_mountp; } ;
struct nfsclsession {scalar_t__ nfsess_defunct; int nfsess_foreslots; int nfsess_slots; int /*<<< orphan*/  nfsess_mtx; int /*<<< orphan*/  nfsess_sessionid; scalar_t__* nfsess_slotseq; } ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NFSERR_BADSESSION ; 
 int /*<<< orphan*/  NFSX_V4SESSIONID ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct nfsmount *nmp, struct nfsclsession *sep,
    int *slotposp, int *maxslotp, uint32_t *slotseqp, uint8_t *sessionid)
{
	int i, maxslot, slotpos;
	uint64_t bitval;

	/* Find an unused slot. */
	slotpos = -1;
	maxslot = -1;
	FUNC2(&sep->nfsess_mtx);
	do {
		if (nmp != NULL && sep->nfsess_defunct != 0) {
			/* Just return the bad session. */
			FUNC1(sep->nfsess_sessionid, sessionid,
			    NFSX_V4SESSIONID);
			FUNC4(&sep->nfsess_mtx);
			return (NFSERR_BADSESSION);
		}
		bitval = 1;
		for (i = 0; i < sep->nfsess_foreslots; i++) {
			if ((bitval & sep->nfsess_slots) == 0) {
				slotpos = i;
				sep->nfsess_slots |= bitval;
				sep->nfsess_slotseq[i]++;
				*slotseqp = sep->nfsess_slotseq[i];
				break;
			}
			bitval <<= 1;
		}
		if (slotpos == -1) {
			/*
			 * If a forced dismount is in progress, just return.
			 * This RPC attempt will fail when it calls
			 * newnfs_request().
			 */
			if (nmp != NULL && FUNC0(nmp->nm_mountp)) {
				FUNC4(&sep->nfsess_mtx);
				return (ESTALE);
			}
			/* Wake up once/sec, to check for a forced dismount. */
			(void)FUNC3(&sep->nfsess_slots, &sep->nfsess_mtx,
			    PZERO, "nfsclseq", hz);
		}
	} while (slotpos == -1);
	/* Now, find the highest slot in use. (nfsc_slots is 64bits) */
	bitval = 1;
	for (i = 0; i < 64; i++) {
		if ((bitval & sep->nfsess_slots) != 0)
			maxslot = i;
		bitval <<= 1;
	}
	FUNC1(sep->nfsess_sessionid, sessionid, NFSX_V4SESSIONID);
	FUNC4(&sep->nfsess_mtx);
	*slotposp = slotpos;
	*maxslotp = maxslot;
	return (0);
}