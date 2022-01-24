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
struct bnxt_softc {int nrxqsets; int /*<<< orphan*/ * rx_cp_rings; int /*<<< orphan*/  def_cp_ring; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bnxt_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC1(ctx);
	int i;

	FUNC0(&softc->def_cp_ring);
	for (i = 0; i < softc->nrxqsets; i++)
		FUNC0(&softc->rx_cp_rings[i]);

	return;
}