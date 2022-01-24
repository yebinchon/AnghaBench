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
struct bnxt_softc {int /*<<< orphan*/  def_cp_ring; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_softc*) ; 
 struct bnxt_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC3(ctx);

	FUNC1(&softc->def_cp_ring);
	FUNC2(softc);
	FUNC0(softc);
	return;
}