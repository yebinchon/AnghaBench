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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int getspi_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACQHASH_NHASH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int IPSEC_DIR_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_IPSEC_SA ; 
 int /*<<< orphan*/  M_IPSEC_SAH ; 
 int /*<<< orphan*/  M_IPSEC_SAQ ; 
 int /*<<< orphan*/  M_IPSEC_SP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SADB_SATYPE_MAX ; 
 int /*<<< orphan*/  SAHHASH_NHASH ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  SAVHASH_NHASH ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SPHASH_NHASH ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  UMA_ZONE_PCPU ; 
 int /*<<< orphan*/  V_acqaddrhash_mask ; 
 void* V_acqaddrhashtbl ; 
 int /*<<< orphan*/  V_acqseqhash_mask ; 
 void* V_acqseqhashtbl ; 
 int /*<<< orphan*/  V_acqtree ; 
 int /*<<< orphan*/  V_key_lft_zone ; 
 int /*<<< orphan*/ * V_regtree ; 
 int /*<<< orphan*/  V_sahaddrhash_mask ; 
 void* V_sahaddrhashtbl ; 
 int /*<<< orphan*/  V_sahtree ; 
 int /*<<< orphan*/  V_savhash_mask ; 
 void* V_savhashtbl ; 
 int /*<<< orphan*/  V_spacqtree ; 
 int /*<<< orphan*/  V_sphash_mask ; 
 void* V_sphashtbl ; 
 int /*<<< orphan*/ * V_sptree ; 
 int /*<<< orphan*/ * V_sptree_ifnet ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curvnet ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  key_timehandler ; 
 int /*<<< orphan*/  key_timer ; 
 TYPE_1__ keystat ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(void)
{
	int i;

	for (i = 0; i < IPSEC_DIR_MAX; i++) {
		FUNC7(&V_sptree[i]);
		FUNC7(&V_sptree_ifnet[i]);
	}

	V_key_lft_zone = FUNC13("IPsec SA lft_c",
	    sizeof(uint64_t) * 2, NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, UMA_ZONE_PCPU);

	FUNC7(&V_sahtree);
	V_sphashtbl = FUNC10(SPHASH_NHASH, M_IPSEC_SP, &V_sphash_mask);
	V_savhashtbl = FUNC10(SAVHASH_NHASH, M_IPSEC_SA, &V_savhash_mask);
	V_sahaddrhashtbl = FUNC10(SAHHASH_NHASH, M_IPSEC_SAH,
	    &V_sahaddrhash_mask);
	V_acqaddrhashtbl = FUNC10(ACQHASH_NHASH, M_IPSEC_SAQ,
	    &V_acqaddrhash_mask);
	V_acqseqhashtbl = FUNC10(ACQHASH_NHASH, M_IPSEC_SAQ,
	    &V_acqseqhash_mask);

	FUNC12();

	for (i = 0; i <= SADB_SATYPE_MAX; i++)
		FUNC2(&V_regtree[i]);

	FUNC2(&V_acqtree);
	FUNC2(&V_spacqtree);

	if (!FUNC1(curvnet))
		return;

	FUNC6();
	FUNC3();
	FUNC4();
	FUNC0();
	FUNC5();

#ifndef IPSEC_DEBUG2
	FUNC8(&key_timer, 1);
	FUNC9(&key_timer, hz, key_timehandler, NULL);
#endif /*IPSEC_DEBUG2*/

	/* initialize key statistics */
	keystat.getspi_count = 1;

	if (bootverbose)
		FUNC11("IPsec: Initialized Security Association Processing.\n");
}