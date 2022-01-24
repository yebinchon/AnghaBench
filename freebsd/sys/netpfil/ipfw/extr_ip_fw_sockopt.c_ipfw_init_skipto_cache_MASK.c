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
struct ip_fw_chain {int* idxmap; int* idxmap_back; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct ip_fw_chain *chain)
{
	int *idxmap, *idxmap_back;

	idxmap = FUNC5(65536 * sizeof(int), M_IPFW, M_WAITOK | M_ZERO);
	idxmap_back = FUNC5(65536 * sizeof(int), M_IPFW, M_WAITOK);

	/*
	 * Note we may be called at any time after initialization,
	 * for example, on first skipto rule, so we need to
	 * provide valid chain->idxmap on return
	 */

	FUNC0(chain);
	if (chain->idxmap != NULL) {
		FUNC1(chain);
		FUNC4(idxmap, M_IPFW);
		FUNC4(idxmap_back, M_IPFW);
		return;
	}

	/* Set backup pointer first to permit building cache */
	chain->idxmap_back = idxmap_back;
	FUNC7(chain, chain->map);
	FUNC2(chain);
	/* It is now safe to set chain->idxmap ptr */
	chain->idxmap = idxmap;
	FUNC6(chain);
	FUNC3(chain);
	FUNC1(chain);
}