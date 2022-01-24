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
struct bwn_dma_ring {int dr_numslots; struct bwn_dma_ring* dr_meta; int /*<<< orphan*/ * dr_txhdr_cache; } ;

/* Variables and functions */
 int BWN_MAXTXHDRSIZE ; 
 int BWN_TX_SLOTS_PER_FRAME ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_dma_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_dma_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_dma_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bwn_dma_ring **dr)
{

	if (dr == NULL)
		return;

	FUNC0(*dr);
	FUNC1(*dr);

	if ((*dr)->dr_txhdr_cache != NULL) {
		FUNC2((*dr)->dr_txhdr_cache,
		    ((*dr)->dr_numslots / BWN_TX_SLOTS_PER_FRAME) *
		    BWN_MAXTXHDRSIZE, M_DEVBUF);
	}
	FUNC3((*dr)->dr_meta, M_DEVBUF);
	FUNC3(*dr, M_DEVBUF);

	*dr = NULL;
}