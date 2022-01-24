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
typedef  int /*<<< orphan*/  uint16_t ;
struct mgb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGB_DMAC_INTR_ENBL_SET ; 
 int /*<<< orphan*/  MGB_DMAC_INTR_STS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mgb_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(if_ctx_t ctx, uint16_t qid)
{
	/* XXX: not called (since tx interrupts not used) */
	struct mgb_softc *sc;

	sc = FUNC3(ctx);

	FUNC0(sc, MGB_INTR_ENBL_SET, FUNC2(qid));

	FUNC0(sc, MGB_DMAC_INTR_STS, FUNC1(qid));
	FUNC0(sc, MGB_DMAC_INTR_ENBL_SET, FUNC1(qid));
	return (0);
}