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
typedef  size_t uint16_t ;
struct vmxnet3_softc {TYPE_1__* vmx_rxq; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_2__ {int /*<<< orphan*/  vxrxq_intr_idx; } ;

/* Variables and functions */
 struct vmxnet3_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx, uint16_t qid)
{
	struct vmxnet3_softc *sc;

	sc = FUNC0(ctx);
	FUNC1(sc, sc->vmx_rxq[qid].vxrxq_intr_idx);
	return (0);
}