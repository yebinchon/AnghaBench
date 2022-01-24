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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_long ;
struct nchashhead {int dummy; } ;
struct namecache {int /*<<< orphan*/  nc_dvp; int /*<<< orphan*/  nc_nlen; int /*<<< orphan*/  nc_name; } ;

/* Variables and functions */
 struct namecache* FUNC0 (struct nchashhead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_VFSCACHE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nchashhead*,int /*<<< orphan*/ ) ; 
 struct nchashhead* FUNC11 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  nc_hash ; 
 scalar_t__ nchash ; 
 struct nchashhead* nchashtbl ; 
 int ncsize ; 
 int ncsizefactor ; 
 int numbucketlocks ; 

void
FUNC12(int newmaxvnodes)
{
	struct nchashhead *new_nchashtbl, *old_nchashtbl;
	u_long new_nchash, old_nchash;
	struct namecache *ncp;
	uint32_t hash;
	int newncsize;
	int i;

	newncsize = newmaxvnodes * ncsizefactor;
	newmaxvnodes = FUNC7(newmaxvnodes * 2);
	if (newmaxvnodes < numbucketlocks)
		newmaxvnodes = numbucketlocks;

	new_nchashtbl = FUNC11(newmaxvnodes, M_VFSCACHE, &new_nchash);
	/* If same hash table size, nothing to do */
	if (nchash == new_nchash) {
		FUNC10(new_nchashtbl, M_VFSCACHE);
		return;
	}
	/*
	 * Move everything from the old hash table to the new table.
	 * None of the namecache entries in the table can be removed
	 * because to do so, they have to be removed from the hash table.
	 */
	FUNC6();
	FUNC5();
	old_nchashtbl = nchashtbl;
	old_nchash = nchash;
	nchashtbl = new_nchashtbl;
	nchash = new_nchash;
	for (i = 0; i <= old_nchash; i++) {
		while ((ncp = FUNC0(&old_nchashtbl[i])) != NULL) {
			hash = FUNC4(ncp->nc_name, ncp->nc_nlen,
			    ncp->nc_dvp);
			FUNC2(ncp, nc_hash);
			FUNC1(FUNC3(hash), ncp, nc_hash);
		}
	}
	ncsize = newncsize;
	FUNC8();
	FUNC9();
	FUNC10(old_nchashtbl, M_VFSCACHE);
}