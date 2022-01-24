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
struct iwi_softc {int dummy; } ;
struct iwi_cmd_ring {int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/  desc_map; int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct iwi_softc *sc, struct iwi_cmd_ring *ring)
{
	if (ring->desc != NULL) {
		FUNC1(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(ring->desc_dmat, ring->desc_map);
		FUNC3(ring->desc_dmat, ring->desc, ring->desc_map);
	}

	if (ring->desc_dmat != NULL)
		FUNC0(ring->desc_dmat);	
}