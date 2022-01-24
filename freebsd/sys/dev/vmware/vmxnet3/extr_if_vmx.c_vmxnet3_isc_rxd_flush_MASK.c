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
typedef  size_t uint8_t ;
typedef  size_t uint16_t ;
struct vmxnet3_softc {struct vmxnet3_rxqueue* vmx_rxq; } ;
struct vmxnet3_rxring {scalar_t__ vxrxr_ndesc; } ;
struct vmxnet3_rxqueue {struct vmxnet3_rxring* vxrxq_cmd_ring; } ;
typedef  scalar_t__ qidx_t ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void *vsc, uint16_t rxqid, uint8_t flid, qidx_t pidx)
{
	struct vmxnet3_softc *sc;
	struct vmxnet3_rxqueue *rxq;
	struct vmxnet3_rxring *rxr;
	bus_size_t r;
	
	sc = vsc;
	rxq = &sc->vmx_rxq[rxqid];
	rxr = &rxq->vxrxq_cmd_ring[flid];

	if (flid == 0)
		r = FUNC0(rxqid);
	else
		r = FUNC1(rxqid);

	/*
	 * pidx is the index of the last descriptor with a buffer the device
	 * can use, and the device needs to be told which index is one past
	 * that.
	 */
	if (++pidx == rxr->vxrxr_ndesc)
		pidx = 0;
	FUNC2(sc, r, pidx);
}